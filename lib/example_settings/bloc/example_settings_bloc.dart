import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_settings_bloc.freezed.dart';
part 'example_settings_event.dart';
part 'example_settings_state.dart';

class ExampleSettingsBloc
    extends Bloc<ExampleSettingsEvent, ExampleSettingsState> {
  ExampleSettingsBloc({
    required CurrentUserPreferencesRepository currentUserPreferencesRepository,
  })  : _currentUserPreferencesRepository = currentUserPreferencesRepository,
        super(const ExampleSettingsState()) {
    on<ExampleSettingsEvent>(_onExampleSettingsEvent);
  }
  final CurrentUserPreferencesRepository _currentUserPreferencesRepository;

  Future<void> _onExampleSettingsEvent(
    ExampleSettingsEvent event,
    Emitter<ExampleSettingsState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      updateAppIsVibratable: (event) async {
        await _currentUserPreferencesRepository.updateIsVibratable(
          updatedIsVibratable: event.updatedIsVibratable,
        );
      },
      updateAppLanguage: (event) async {
        await _currentUserPreferencesRepository.updateLanguage(
          updatedLanguage: event.updatedLanguage,
        );
      },
      updateAppThemeMode: (event) => _currentUserPreferencesRepository
          .updateTheme(updatedThemeMode: event.updatedThemeMode),
    );

    emit(state.copyWith(isLoading: false, errorMessage: null));
  }
}
