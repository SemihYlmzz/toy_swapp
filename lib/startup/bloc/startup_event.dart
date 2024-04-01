part of 'startup_bloc.dart';

@freezed
sealed class StartupEvent with _$StartupEvent {
  const factory StartupEvent.initializeAll() = StartupInitializeAll;
  const factory StartupEvent.displayErrorScreen() = StartupDisplayErrorScreen;
}
