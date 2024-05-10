class ProfileBlocListeners {
  factory ProfileBlocListeners() {
    return _instance;
  }

  ProfileBlocListeners._internal();
  static final ProfileBlocListeners _instance =
      ProfileBlocListeners._internal();
}
