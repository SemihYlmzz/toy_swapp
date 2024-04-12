class SignInBlocListeners {
  factory SignInBlocListeners() {
    return _instance;
  }

  SignInBlocListeners._internal();
  static final SignInBlocListeners _instance = SignInBlocListeners._internal();
}
