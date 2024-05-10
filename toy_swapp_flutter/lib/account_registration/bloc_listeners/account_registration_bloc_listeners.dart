class AccountRegistrationBlocListeners {
  factory AccountRegistrationBlocListeners() {
    return _instance;
  }

  AccountRegistrationBlocListeners._internal();
  static final AccountRegistrationBlocListeners _instance =
      AccountRegistrationBlocListeners._internal();
}
