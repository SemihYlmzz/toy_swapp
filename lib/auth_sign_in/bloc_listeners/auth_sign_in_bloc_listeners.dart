class AuthSignInBlocListeners {
  factory AuthSignInBlocListeners() {
    return _instance;
  }

  AuthSignInBlocListeners._internal();
  static final AuthSignInBlocListeners _instance =
      AuthSignInBlocListeners._internal();
}
