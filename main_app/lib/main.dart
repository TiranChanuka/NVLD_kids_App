import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nvld_app/BubblePopBliss/BubblePopBliss.dart';
import 'package:nvld_app/DoodleDash/DoodleDashHome.dart';
import 'package:nvld_app/FeelingExplore/FeelingExplorerHome.dart';
import 'package:nvld_app/MyDayMyWay/MyDayMyWay.dart';
import 'package:nvld_app/NaviationBar.dart';
import './Screens/Homepage.dart';

import 'package:device_preview/device_preview.dart';

import 'MagicPattern/MagicPatternHome.dart';
import 'PuzzlePlanet/PuzzelPlanetHome.dart';
import 'SplashScreen/splashScreenOne.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: SplashScreenOne(),
      routes: {
        '/feeling_explore': (context) => FeelingExplorer(),
        '/magic_pattern':(context) => MagicPatternHome(),
        '/puzzel_planet':(context) => PuzzelPlanetHome(),
        '/doodle_dash': (context) => DoodleDashHome(),
        '/bubble_pop_bliss':(context) => BubblePopBliss(),
        '/myday_myway':(context) => MyDayMyWay()
      },
    );
  }
}
