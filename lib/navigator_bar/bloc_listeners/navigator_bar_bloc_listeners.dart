class NavigatorBarBlocListeners {
  factory NavigatorBarBlocListeners() {
    return _instance;
  }

  NavigatorBarBlocListeners._internal();
  static final NavigatorBarBlocListeners _instance =
      NavigatorBarBlocListeners._internal();
}
