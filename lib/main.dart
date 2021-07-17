import 'package:flutter/material.dart';
import 'package:instagram_clone_app/Screens/login_register_splash/splashscreen.dart';

void main() {
  runApp(Instagram());
}

class Instagram extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreenDesign(),
    );
  }
}
