class EmailVerificationBlocListeners {
  factory EmailVerificationBlocListeners() {
    return _instance;
  }

  EmailVerificationBlocListeners._internal();
  static final EmailVerificationBlocListeners _instance =
      EmailVerificationBlocListeners._internal();
}
