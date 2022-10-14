part of 'theme.dart';

class IconSet {

  final String splashImage;


  IconSet._({

   required this.splashImage,
});

  static IconSet get create{

    return IconSet._(
      splashImage: 'assets/'
    );
  }
}