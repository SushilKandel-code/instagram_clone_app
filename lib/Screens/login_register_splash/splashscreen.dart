import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone_app/Screens/login_register_splash/login.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreenDesign extends StatefulWidget {
  const SplashScreenDesign({Key? key}) : super(key: key);

  @override
  _SplashScreenDesignState createState() => _SplashScreenDesignState();
}

class _SplashScreenDesignState extends State<SplashScreenDesign> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 1000,
      splash: Image.asset('images/insta.png'),
      centered: true,
      nextScreen: LoginScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.white,
      pageTransitionType: PageTransitionType.fade,
      animationDuration: Duration(seconds: 2),
      splashIconSize: 100.0,
      
    );
  }
}
