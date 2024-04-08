class AppBlocListeners {
  factory AppBlocListeners() {
    return _instance;
  }

  AppBlocListeners._internal();
  static final AppBlocListeners _instance = AppBlocListeners._internal();
}
