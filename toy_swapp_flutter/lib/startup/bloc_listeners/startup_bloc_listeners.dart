class StartupBlocListeners {
  factory StartupBlocListeners() {
    return _instance;
  }

  StartupBlocListeners._internal();
  static final StartupBlocListeners _instance =
      StartupBlocListeners._internal();
}
