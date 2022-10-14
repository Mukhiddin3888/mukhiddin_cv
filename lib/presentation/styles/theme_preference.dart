
part of 'theme.dart';


class _ThemePreference {
  final SharedPreferences _preferences;

  static const prefKey = 'theme_mode';

  _ThemePreference._(this._preferences);

  static Future<_ThemePreference> get create async {
    final _preference = await SharedPreferences.getInstance();
    return _ThemePreference._(_preference);
  }

  CustomThemeMode getMode() {
    final modeKey = _preferences.getString(_ThemePreference.prefKey) ??
        CustomThemeMode.light.toKey;

    return CustomThemeModeX.toValue(modeKey);
  }

  Future<void> setMode(CustomThemeMode mode) async {
    await _preferences.setString(_ThemePreference.prefKey, mode.toKey);
  }

  Future<void> clean() async {
    await _preferences.clear();
  }
}
