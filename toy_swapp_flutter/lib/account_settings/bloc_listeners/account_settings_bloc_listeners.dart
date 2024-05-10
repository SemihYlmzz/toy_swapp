class AccountSettingsBlocListeners {
  factory AccountSettingsBlocListeners() {
    return _instance;
  }

  AccountSettingsBlocListeners._internal();
  static final AccountSettingsBlocListeners _instance =
      AccountSettingsBlocListeners._internal();
}
