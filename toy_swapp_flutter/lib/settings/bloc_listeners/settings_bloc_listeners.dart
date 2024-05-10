class SettingsBlocListeners {
  factory SettingsBlocListeners() {
    return _instance;
  }

  SettingsBlocListeners._internal();
  static final SettingsBlocListeners _instance =
      SettingsBlocListeners._internal();
}
