import 'dart:async';

import 'package:app_preferences_repository/app_preferences_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../errors/errors.dart';

part 'app_bloc.freezed.dart';
part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc({
    required AppPreferencesRepository appPreferencesRepository,
  }) : super(
          AppState(appPreferences: appPreferencesRepository.appPreferences),
        ) {
    on<AppEvent>(_onAppEvent);
    _appPreferencesSubscription =
        appPreferencesRepository.appPreferencesStream.listen((event) {
      add(AppEvent.updateAppPreferences(event));
    });
  }

  // Stream Subscriptions
  StreamSubscription<AppPreferences>? _appPreferencesSubscription;

  // Dispose Subscriptions
  @override
  Future<void> close() {
    _appPreferencesSubscription?.cancel();
    return super.close();
  }

  Future<void> _onAppEvent(
    AppEvent event,
    Emitter<AppState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    await event.map(
      updateAppPreferences: (e) async {
        emit(state.copyWith(appPreferences: e.appPreferences));
      },
    );

    emit(state.copyWith(isLoading: false, failure: null));
  }
}
