import 'dart:async';

import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:auth_repository/auth_repository.dart';
import 'package:consumer_repository/consumer_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toy_swapp_client/toy_swapp_client.dart';
import '../../errors/errors.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc({
    required AuthRepository authRepository,
    required ConsumerRepository consumerRepository,
    required AppMetadataRepository appMetadataRepository,
    required AppPreferencesRepository appPreferencesRepository,
  })  : _authRepository = authRepository,
        _appPreferencesRepository = appPreferencesRepository,
        super(
          SettingsState(
            appMetadata: appMetadataRepository.appMetadata,
            currentConsumer: consumerRepository.currentConsumer,
            currentAuth: authRepository.currentAuth,
          ),
        ) {
    // Listen Events
    on<SettingsEvent>(_onSettingsEvent);

    // Listen Consumer Changes
    _currentConsumerSubcription =
        consumerRepository.currentConsumerStream.listen((consumer) {
      if (consumer == null) {
        return;
      }
      add(SettingsEvent.currentConsumerUpdated(consumer));
    });
    // Listen Auth Changes
    _currentAuthSubscription = _authRepository.currentAuthStream.listen((auth) {
      add(SettingsEvent.currentAuthUpdated(auth));
    });
    // Listen AppMetadata Changes
    _appMetadataSubscription =
        appMetadataRepository.appMetadataStream.listen((appMetadata) {
      add(SettingsEvent.appMetadataUpdated(appMetadata));
    });
  }

  // Repositories
  final AuthRepository _authRepository;
  final AppPreferencesRepository _appPreferencesRepository;

  // Subcriptions
  StreamSubscription<Consumer?>? _currentConsumerSubcription;
  StreamSubscription<Auth>? _currentAuthSubscription;
  StreamSubscription<AppMetadata>? _appMetadataSubscription;

  // Dispose Subscriptions
  @override
  Future<void> close() {
    _currentConsumerSubcription?.cancel();
    _currentAuthSubscription?.cancel();
    _appMetadataSubscription?.cancel();
    return super.close();
  }

  // Events
  Future<void> _onSettingsEvent(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      authSignOut: (value) async {
        final trySignOut = await _authRepository.signOut();
        trySignOut.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => emit(state.copyWith(isSignOutCompleted: true)),
        );
      },
      currentConsumerUpdated: (value) {
        emit(state.copyWith(currentConsumer: value.updatedConsumer));
      },
      currentAuthUpdated: (value) {
        emit(state.copyWith(currentAuth: value.updatedAuth));
      },
      appMetadataUpdated: (value) {
        emit(state.copyWith(appMetadata: value.updatedAppMetadata));
      },
      updateIsVibratable: (value) async {
        final tryUpdate = await _appPreferencesRepository.updateIsVibratable(
          isVibratable: value.updatedIsVibratable,
        );
        tryUpdate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => null,
        );
      },
      updateThemeMode: (e) async {
        final tryUpdate = await _appPreferencesRepository.updateThemeMode(
          updatedThemeMode: e.updatedThemeMode,
        );
        tryUpdate.fold(
          (failure) => emit(state.copyWith(failure: failure)),
          (success) => null,
        );
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
