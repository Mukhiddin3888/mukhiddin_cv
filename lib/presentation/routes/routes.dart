
import 'package:flutter/material.dart';
import 'package:mukhiddin_cv/presentation/pages/home.dart';
import 'package:mukhiddin_cv/presentation/pages/splash_page.dart';
import 'package:mukhiddin_cv/presentation/test.dart';

class Routes {

  static PageRoute getNetworkNotFound() => MaterialPageRoute(
    builder: (_) => const TestPage(),
  );

  static PageRoute getSplashPage(BuildContext context) => MaterialPageRoute(
    builder: (_) => const SplashPage(),
  );

  static PageRoute getMainPageRoute(BuildContext context) => MaterialPageRoute(
    builder: (_) => const HomePage(),
  );

}