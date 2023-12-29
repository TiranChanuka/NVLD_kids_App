import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nvld_app/NaviationBar.dart';
import './Screens/Homepage.dart';

import 'package:device_preview/device_preview.dart';

import 'SplashScreen/SplashScreen.dart';

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
      home: OnboardScreen(),
    );
  }
}
