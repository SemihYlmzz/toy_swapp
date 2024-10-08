import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';

import '../../errors/errors.dart';

part 'toys_bloc.freezed.dart';
part 'toys_event.dart';
part 'toys_state.dart';

const duration = Duration(seconds: 2);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ToysBloc extends Bloc<ToysEvent, ToysState> {
  ToysBloc({
    required ConsumerRepository consumerRepository,
    required ToyRepository toyRepository,
  })  : _toyRepository = toyRepository,
        _consumerRepository = consumerRepository,
        super(ToysState(currentConsumer: consumerRepository.currentConsumer!)) {
    // Trigger Events
    on<ToysEvent>(
      _onToysEvent,
      transformer: throttleDroppable(duration),
    );
  }

  // Repositories
  final ToyRepository _toyRepository;
  final ConsumerRepository _consumerRepository;

  // Events
  Future<void> _onToysEvent(
    ToysEvent event,
    Emitter<ToysState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    await event.map(
      likeToy: (value) async {
        final oldLikedToyIDs = state.likedToyIDs;
        emit(
          state.copyWith(likedToyIDs: [...oldLikedToyIDs, value.toyID]),
        );
        final tryLike = await _toyRepository.likeToy(
          toyID: value.toyID,
          currentConsumerID: _consumerRepository.currentConsumer!.id!,
        );
        tryLike.fold(
          (l) => emit(state.copyWith(failure: l, likedToyIDs: oldLikedToyIDs)),
          (_) => null,
        );
      },
      unlikeToy: (value) async {
        final oldLikedToyIDs = state.likedToyIDs;
        final updatedLikedToyIDs =
            oldLikedToyIDs.where((id) => id != value.toyID).toList();

        emit(state.copyWith(likedToyIDs: updatedLikedToyIDs));

        final tryUnlike = await _toyRepository.unlikeToy(
          toyID: value.toyID,
          currentConsumerID: _consumerRepository.currentConsumer!.id!,
        );
        tryUnlike.fold(
          (l) => emit(state.copyWith(failure: l, likedToyIDs: oldLikedToyIDs)),
          (_) => null,
        );
      },
      fetchLikeableToys: (value) async {
        if (value.isStartOver) {
          emit(state.copyWith(toys: [], hasReachedMax: false, likedToyIDs: []));
        }
        // If reached max, do not fetch
        if (state.hasReachedMax && !value.isStartOver) return;

        // No failure while fetching
        emit(state.copyWith(fetchFailure: null, isFetching: true));

        // Fetch 10 likeable toys
        final tryFetch = await _toyRepository.fetchMoreLikeableToys(
          currentConsumerID: state.currentConsumer.id!,
          fetchedLikeableToysLength: state.toys.length,
        );
        tryFetch.fold(
          (failure) => emit(state.copyWith(fetchFailure: failure)),
          (fetchedToys) {
            final newFetchToys = [...fetchedToys, ...state.toys];
            emit(
              state.copyWith(
                toys: newFetchToys,
                hasReachedMax: fetchedToys.length < 10,
              ),
            );
          },
        );
      },
    );
    emit(state.copyWith(isLoading: false, failure: null, isFetching: false));
  }
}
