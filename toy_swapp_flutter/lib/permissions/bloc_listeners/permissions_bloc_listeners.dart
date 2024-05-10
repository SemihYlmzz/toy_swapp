class PermissionsBlocListeners {
  factory PermissionsBlocListeners() {
    return _instance;
  }

  PermissionsBlocListeners._internal();
  static final PermissionsBlocListeners _instance =
      PermissionsBlocListeners._internal();
}
