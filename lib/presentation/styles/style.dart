import 'package:flutter/material.dart';

class Style {
  Style._();
  // colors.

  static const Color bgDark = Color(0xff1A1A1A);

  static const Color darkBar = Color(0xFF202325);

  static const Color bgBlurFill = Color(0x08FFFFFF);

  static const Color negative = Color(0xffE96E6E);

  static const Color informationText = Color(0xff07AEB9);

  static const Color primary = Color(0xff74de43);

  static const Color primaryVariant = Color(0xff298BE2);

  static const Color twitterBack = Color(0xff1DA1F2);

  static const Color faceBookBack = Color(0xff0078FF);

  static const Color primaryShadow = Color(0xffF4FAFF);

  static const Color bgDarkV = Color(0xff202325);

  static const Color secondary = Color(0xffF15B40);

  static const Color secondaryVariant = Color(0xffFF7763);

  static const Color error = Color(0xffFF5247);

  static const Color red = Color(0xffFE0000);

  static const Color success = Color(0xff31D0AA);

  static const Color white = Color(0xffffffff);

  static const Color icon = Color(0xff86869D);

  static const Color stroke = Color(0xffECF1F4);


  static const Color strokeDashed = Color(0xff707997);



  static const Color strokeDark = Color(0xff2B2F32);

  static const Color strokeDartMode = Color(0x66555376);

  static const Color disabledDark = Color(0xff303437);

  static const Color disabledDarkTxt = Color(0xff6C7072);

  static const Color disabledLight = Color(0xffE3E4E5);

  static const Color disabledLightText = Color(0xff979C9E);

  static const Color accent = Color(0xffECF1F4);

  static const Color text = Color(0xff1C2A5B);

  static const Color bodyText = Color(0xff494966);

  static const Color subText = Color(0xffA4A4B7);

  static const Color subTextDark = Color(0xff7A7B85);

  static const Color black = Color(0xFB000000);

  static const Color black45 = Color(0x73000000);

  static const Color transparent = Colors.transparent;

  static const Color grey = Color(0xffF9F9F9);


  static const BoxShadow blueIconShadow = BoxShadow(
    color: Color(0x2061A9FD),
    blurRadius: 7.41,
    offset: Offset(0, 4.47),
  );

  static const BoxShadow itemShadow = BoxShadow(
    color: Color(0x3361A9FD),
    blurRadius: 13,
    offset: Offset(0, 4),
  );



  static TextStyle light96({double size = 96, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle light60({double size = 60, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w300,
    );
  }

  static TextStyle regular48({double size = 48, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular34({double size = 34, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular24({double size = 24, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular14({double size = 14, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12({double size = 12, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle medium20({double size = 20, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium14({double size = 14, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold14({double size = 14, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle bold20({double size = 20, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle bold16({double size = 16, Color color = text}) {
    return TextStyle(
      fontFamily: 'Inter',
      fontSize: size,
      color: color,
      fontWeight: FontWeight.w700,
    );
  }
}
