class ToysBlocListeners {
  factory ToysBlocListeners() {
    return _instance;
  }

  ToysBlocListeners._internal();
  static final ToysBlocListeners _instance = ToysBlocListeners._internal();
}
