import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:socialconnectionapp1/View/SplashScreen/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      MaterialApp(
      title: 'Social Connections',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      // home: BottomNavBarV2(),
    );
  }
}


