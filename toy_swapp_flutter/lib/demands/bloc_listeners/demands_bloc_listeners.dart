class DemandsBlocListeners {
  factory DemandsBlocListeners() {
    return _instance;
  }

  DemandsBlocListeners._internal();
  static final DemandsBlocListeners _instance =
      DemandsBlocListeners._internal();
}
