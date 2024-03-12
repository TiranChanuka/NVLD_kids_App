import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nvld_app/BubblePopBliss/BubblePopBliss.dart';
import 'package:nvld_app/DoodleDash/DoodleDashHome.dart';
import 'package:nvld_app/FeelingExplore/FeelingExplorerHome.dart';
import 'package:nvld_app/MyDayMyWay/MyDayMyWay.dart';

import 'package:device_preview/device_preview.dart';

import 'MagicPattern/MagicPatternHome.dart';
import 'PuzzlePlanet/PuzzelPlanetHome.dart';
import 'SplashScreen/splashScreenOne.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const SplashScreenOne(),
      routes: {
        '/feeling_explore': (context) => const FeelingExplorer(),
        '/magic_pattern':(context) => const MagicPatternHome(),
        '/puzzel_planet':(context) => const PuzzelPlanetHome(),
        '/doodle_dash': (context) => const DoodleDashHome(),
        '/bubble_pop_bliss':(context) => const BubblePopBliss(),
        '/myday_myway':(context) => const MyDayMyWay()
      },
    );
  }
}
