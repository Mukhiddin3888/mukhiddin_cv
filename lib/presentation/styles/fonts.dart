part of 'theme.dart';

class FontSet {
  final TextStyle headline1;
  final TextStyle headline2;
  final TextStyle headline3;
  final TextStyle headline4;
  final TextStyle headline5;
  final TextStyle headline6;
  final TextStyle subtitle1;
  final TextStyle subtitle2;
  final TextStyle bodyText1;
  final TextStyle bodyText2;
  final TextStyle caption;

  FontSet._({
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.headline4,
    required this.headline5,
    required this.headline6,
    required this.subtitle1,
    required this.subtitle2,
    required this.bodyText1,
    required this.bodyText2,
    required this.caption,
  });

  static FontSet createOrUpdate(CustomColorSet colors) {
    return FontSet._(
      headline1: Style.regular34(size: 34, color: colors.text),
      headline2: Style.regular24(size: 24, color: colors.text),
      headline3: Style.medium20(size: 20, color: colors.text),
      headline4: Style.semiBold14(size: 14, color: colors.text),
      headline5: Style.bold16(size: 16),
      headline6: Style.bold20(size: 20, color: colors.text),
      subtitle1: Style.medium14(size: 14, color: colors.text),
      subtitle2: Style.semiBold16(size: 16),
      bodyText1: Style.regular14(size: 14, color: colors.subText),
      bodyText2: Style.regular16(size: 16, color: colors.subText),
      caption: Style.regular12(size: 12),
    );
  }
}
