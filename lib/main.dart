import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:mukhiddin_cv/presentation/app_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';


void main() {
  _setupLogging();

  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1400,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(480, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(800, name: TABLET),
            const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      home: const AppWidget(),
    );
  }
}

void _setupLogging() => Logger.root
  ..level = kDebugMode ? Level.ALL : Level.WARNING
  ..onRecord.listen((record) => debugPrint(
    '${record.level.name}: '
        '${record.time} '
        '${record.loggerName}: '
        '${record.message}',
  ));