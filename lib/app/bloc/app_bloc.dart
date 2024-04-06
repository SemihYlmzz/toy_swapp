import 'package:app_metadata_repository/app_metadata_repository.dart';
import 'package:app_preferences_repository/app_preferences_repository_api.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../errors/errors.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AppPreferencesRepository appPreferencesRepository,
    required AppMetadataRepository appMetadataRepository,
    required AppPreferences appPreferences,
    required AppMetadata appMetadata,
  })  : _appPreferencesRepository = appPreferencesRepository,
        super(
          AppState(
            appPreferences: appPreferences,
            appMetadata: appMetadata,
          ),
        ) {
    // Handle AppEvents
    on<AppEvent>(_onAppEvent);
    // AppPreferences Updated Listener
    _appPreferencesRepository.appPreferencesStream.listen(
      (value) {
        add(AppEvent.appPreferencesUpdated(value));
      },
    );
    appMetadataRepository.appMetadataStream.listen((event) {
      add(AppEvent.appMetadataUpdated(event));
    });
  }

  // Initialize Repositories
  final AppPreferencesRepository _appPreferencesRepository;

  // Events
  Future<void> _onAppEvent(
    AppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    event.map(
      appPreferencesUpdated: (event) async {
        emit(state.copyWith(appPreferences: event.updatedAppPreferences));
      },
      appMetadataUpdated: (e) =>
          emit(state.copyWith(appMetadata: e.updatedAppMetadata)),
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
