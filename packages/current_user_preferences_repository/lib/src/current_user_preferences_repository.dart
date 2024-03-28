import 'dart:async';

import 'models/current_user_preferences.dart';

class CurrentUserPreferencesRepository {
  CurrentUserPreferencesRepository() {
    currentUserPreferencesStream.listen((event) {
      currentUserPreferences = event;
    });
  }
  // Data Manipulation
  final _currentUserStreamController =
      StreamController<CurrentUserPreferences>.broadcast();

  Stream<CurrentUserPreferences> get currentUserPreferencesStream =>
      _currentUserStreamController.stream;

  CurrentUserPreferences? currentUserPreferences;

  // Functions
  Future<void> create() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    _currentUserStreamController.sink.add(const CurrentUserPreferences());
  }

  Future<CurrentUserPreferences?> read() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    _currentUserStreamController.sink.add(const CurrentUserPreferences());
    return const CurrentUserPreferences();
  }
}
