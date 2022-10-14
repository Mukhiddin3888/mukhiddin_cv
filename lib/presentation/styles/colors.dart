
part of 'theme.dart';

class CustomColorSet {
  final Color text;

  final Color bodyText;

  final Color subText;

  final Color stoke;

  final Color primary;

  final Color white;

  final Color icon;

  final Color negative;

  final Color grey;

  final Color backgroundColor;



  CustomColorSet._({
    required this.text,
    required this.bodyText,
    required this.subText,
    required this.stoke,
    required this.primary,
    required this.white,
    required this.icon,
    required this.negative,
    required this.grey,
    required this.backgroundColor,

  });

  factory CustomColorSet._create(CustomThemeMode mode) {
    final isLight = mode.isLight;

    final text = isLight ? Style.text : Style.white;

    final bodyText = isLight ? Style.bodyText : Style.accent;

    final subText = isLight ? Style.subText : Style.subTextDark;

    final stoke = isLight ? Style.stroke : Style.strokeDark;

    const primary = Style.primary;

    const white = Style.white;

    const icon = Style.icon;

    const negative = Style.negative;

    final grey = isLight ? Style.grey : Style.bgDarkV;

    final backgroundColor = isLight ? Style.white : Style.bgDark;




    return CustomColorSet._(
      text: text,
      bodyText: bodyText,
      subText: subText,
      stoke: stoke,
      primary: primary,
      white: white,
      icon: icon,
      negative: negative,
      grey: grey,
      backgroundColor: backgroundColor,
    );
  }

  static CustomColorSet createOrUpdate(CustomThemeMode mode) {
    return CustomColorSet._create(mode);
  }
}
