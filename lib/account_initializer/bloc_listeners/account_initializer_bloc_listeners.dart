class AccountInitializerBlocListeners {
  factory AccountInitializerBlocListeners() {
    return _instance;
  }

  AccountInitializerBlocListeners._internal();
  static final AccountInitializerBlocListeners _instance =
      AccountInitializerBlocListeners._internal();
}
