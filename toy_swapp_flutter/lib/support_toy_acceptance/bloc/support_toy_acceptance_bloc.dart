import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_repository/toy_repository.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'support_toy_acceptance_bloc.freezed.dart';
part 'support_toy_acceptance_event.dart';
part 'support_toy_acceptance_state.dart';

class SupportToyAcceptanceBloc
    extends Bloc<SupportToyAcceptanceEvent, SupportToyAcceptanceState> {
  SupportToyAcceptanceBloc({
    required ToyRepository toyRepository,
  })  : _toyRepository = toyRepository,
        super(const SupportToyAcceptanceState()) {
    on<SupportToyAcceptanceEvent>(_onSupportToyAcceptanceEvent);
  }
  // Repositories
  final ToyRepository _toyRepository;

  // Events
  Future<void> _onSupportToyAcceptanceEvent(
    SupportToyAcceptanceEvent event,
    Emitter<SupportToyAcceptanceState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      startWatchAcceptableToys: (value) async {
        unawaited(_toyRepository.watchAcceptableToys());
      },
      stopWatchAcceptableToys: (value) async {
        await _toyRepository.stopWatchAcceptableToys();
      },
      updateAcceptableToys: (e) async {
        emit(state.copyWith(acceptableToys: e.updatedAcceptableToys));
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
