class HomeBlocListeners {
  factory HomeBlocListeners() {
    return _instance;
  }

  HomeBlocListeners._internal();
  static final HomeBlocListeners _instance =
      HomeBlocListeners._internal();
}
