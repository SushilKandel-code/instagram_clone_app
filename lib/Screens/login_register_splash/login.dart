import 'package:flutter/material.dart';
import 'package:instagram_clone_app/Screens/loginComponent/loginBody.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: LoginBody(),
      ),
    );
  }
}
