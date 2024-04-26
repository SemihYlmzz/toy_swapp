import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp/toys/models/models.dart';

import '../../errors/errors.dart';
import '../toys.dart';

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
        super(const ToysState()) {
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
      clearFetchMoreFailure: (value) async {
        emit(state.copyWith(fetchMoreFailure: null));
      },
      fetchLatest10: (value) async {
        emit(state.copyWith(isInitializing: true, initializingFailure: null));
        final tryFetch = await _toyRepository.fetchLatest10();
        var newToys = <Toy>[];
        tryFetch.fold(
          (l) => emit(state.copyWith(initializingFailure: l)),
          (fetchedToys) => newToys = fetchedToys,
        );
        if (state.initializingFailure != null) {
          return;
        }

        final fetchedToysAndOwners = await _toysToToyAndOwnerConsumers(newToys);

        emit(
          state.copyWith(
            toys: fetchedToysAndOwners,
            hasReachedMax: false,
            isInitializing: false,
          ),
        );
      },
      fetch10BeforeOldestToy: (value) async {
        if (state.hasReachedMax) return;
        final oldestToy = state.toys.firstOrNull?.toy;
        if (oldestToy == null) return;

        final tryFetch = await _toyRepository.fetch10BeforeOldestToy(
          oldestToy: oldestToy,
        );

        var toys = <Toy>[];
        tryFetch.fold(
          (l) => emit(state.copyWith(fetchMoreFailure: l)),
          (newToyList) => toys = newToyList,
        );
        if (state.fetchMoreFailure != null) {
          return;
        }
        // If there is no failure,
        // less than 10 toys are fetched means there are no more toys to fetch
        if (toys.length < 10) {
          emit(state.copyWith(hasReachedMax: true));
        }
        // Loop through all toys to read their owner
        final fetchedToys = await _toysToToyAndOwnerConsumers(toys);
        // Add old toys
        fetchedToys.addAll(state.toys);
        emit(state.copyWith(toys: fetchedToys, fetchMoreFailure: null));
      },
    );
    emit(state.copyWith(isLoading: false, failure: null));
  }

  // Toys Specific Functions
  Future<List<ToyAndOwnerConsumer>> _toysToToyAndOwnerConsumers(
    List<Toy> toys,
  ) async {
    final givenToysAndOwners = <ToyAndOwnerConsumer>[];
    for (final toy in toys) {
      // Try Read Owner
      final tryRead = await _consumerRepository.readConsumer(
        authId: toy.ownerAuthId,
      );
      await tryRead.fold(
        // If Owner is not found, skip this toy
        (l) => null,
        // If Owner is found, add to list
        (toyOwnerConsumer) async {
          givenToysAndOwners.add(
            ToyAndOwnerConsumer(
              toy: toy,
              ownerConsumer: toyOwnerConsumer,
            ),
          );
        },
      );
    }
    return givenToysAndOwners;
  }
}
