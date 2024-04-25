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
    // TODO
    // Loading screen very bad
    // Use Shimmer instead
    // Loading -> Initializing
    emit(state.copyWith(isLoading: true));
    await event.map(
      fetchLatest10: (value) async {
        emit(state.copyWith(isInitializing: true));
        final tryFetch = await _toyRepository.fetchLatest10();
        final nullableLatest10Toys = tryFetch.getRight().toNullable();
        if (nullableLatest10Toys == null) {
          // If Toys are null, stop function.
          return;
        }
        final latest10Toys = nullableLatest10Toys;
        // Loop through all toys to read their owner
        final fetchedToys = <ToyAndOwnerConsumer>[];

        for (final toy in latest10Toys) {
          // Try Read Owner
          final tryRead = await _consumerRepository.readConsumer(
            authId: toy.ownerAuthId,
          );
          await tryRead.fold(
            // If Owner is not found, skip this toy
            (l) => null,
            // If Owner is found, add to list
            (toyOwnerConsumer) async {
              fetchedToys.add(
                ToyAndOwnerConsumer(
                  toy: toy,
                  ownerConsumer: toyOwnerConsumer,
                ),
              );
            },
          );
        }
        emit(
          state.copyWith(
            toys: fetchedToys,
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
        final toys = tryFetch.getRight().toNullable();
        // Get Toy Values But Nullable
        if (toys == null) {
          // If Toys are null, stop function.
          return;
        }
        if (toys.length < 10) {
          emit(state.copyWith(hasReachedMax: true));
        }
        // Toys List to update
        final fetchedToys = <ToyAndOwnerConsumer>[];

        // Loop through all toys to read their owner
        for (final toy in toys) {
          if (state.toys.any((element) => element.toy.id == toy.id)) {
            continue;
          }
          // Try Read Owner
          final tryRead = await _consumerRepository.readConsumer(
            authId: toy.ownerAuthId,
          );
          await tryRead.fold(
            // If Owner is not found, skip this toy
            (l) => null,
            // If Owner is found, add to list
            (toyOwnerConsumer) async {
              fetchedToys.add(
                ToyAndOwnerConsumer(
                  toy: toy,
                  ownerConsumer: toyOwnerConsumer,
                ),
              );
            },
          );
        }

        fetchedToys.addAll(state.toys);

        emit(state.copyWith(toys: fetchedToys));
      },
    );
    emit(state.copyWith(isLoading: false, failure: null));
  }
}
