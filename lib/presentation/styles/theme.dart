import 'package:flutter/material.dart';
import 'package:mukhiddin_cv/presentation/styles/custom_theme_mode.dart';
import 'package:mukhiddin_cv/presentation/styles/custom_theme_mode_ext.dart';
import 'package:mukhiddin_cv/presentation/styles/style.dart';
import 'package:shared_preferences/shared_preferences.dart';


part 'colors.dart';
part 'icons.dart';
part 'fonts.dart';
part 'theme_preference.dart';

class CustomTheme with ChangeNotifier {
  final _ThemePreference _preference;
  final IconSet _iconSet;
  FontSet _fontSet;
  CustomColorSet _colorSet;
   CustomThemeMode _mode;

  CustomColorSet get colors => _colorSet;

  CustomThemeMode get mode => _mode;

  bool get isDark => _mode.isDark;

  IconSet get icons => _iconSet;

  FontSet get fonts => _fontSet;

  CustomTheme._(this._colorSet, this._preference, this._mode, this._iconSet,
      this._fontSet);

  static Future<CustomTheme> get create async {
    final themePreference = await _ThemePreference.create;
    final mode = themePreference.getMode();
    final colorSet = CustomColorSet.createOrUpdate(mode);
    final iconSet = IconSet.create;
    final fontSet = FontSet.createOrUpdate(colorSet);

    return CustomTheme._(
      colorSet,
      themePreference,
      mode,
      iconSet,
      fontSet,
    );
  }

  Future<void> setLight() async {
    await _update(CustomThemeMode.light);
  }

  Future<void> setDark() async {
    await _update(CustomThemeMode.dark);
  }

  Future<void> clean() async {
    await _preference.clean();
  }

  Future<void> toggle() async {
    if (_mode.isLight) {
      await setDark();
    } else {
      await setLight();
    }
  }

  Future<void> _update(CustomThemeMode mode) async {
    _colorSet = CustomColorSet.createOrUpdate(mode);
    _fontSet = FontSet.createOrUpdate(_colorSet);
    _mode = mode;
    notifyListeners();
    await _preference.setMode(mode);
  }
}
