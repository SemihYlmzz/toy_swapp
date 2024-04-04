import 'package:current_user_preferences_repository/current_user_preferences_repository_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../errors/errors.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required CurrentUserPreferencesRepository currentUserPreferencesRepository,
  })  : _currentUserPreferencesRepository = currentUserPreferencesRepository,
        super(
          AppState(
            currentUserPreferences:
                currentUserPreferencesRepository.currentUserPreferences,
          ),
        ) {
    // Handle AppEvents
    on<AppEvent>(_onAppEvent);
    // CurrentUserPreferences Updated Listener
    _currentUserPreferencesRepository.currentUserPreferencesStream.listen(
      (value) {
        add(AppEvent.currentDevicePreferencesUpdated(value));
      },
    );
  }

  // Initialize Repositories
  final CurrentUserPreferencesRepository _currentUserPreferencesRepository;

  // Events
  Future<void> _onAppEvent(
    AppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, isInitError: false));

    await event.map(
      currentDevicePreferencesUpdated: (event) async {
        emit(
          state.copyWith(
            currentUserPreferences: event.updatedCurrentUserPreferences,
          ),
        );
      },
      initializeCurrentUserPreferences: (event) async {
        final tryRead = await _currentUserPreferencesRepository.read();
        tryRead.fold(
          (f) => emit(state.copyWith(isInitError: true, failure: f)),
          (r) => null,
        );
      },
      resetAppPreferences: (value) => (event) async {
        // await _currentUserPreferencesRepository.reset();
        // emit(state.copyWith(currentUserPreferences: null));
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
