import 'dart:async';

import 'package:auth_social/controller/sign_in_provider.dart';
import 'package:auth_social/view/home_screen.dart';
import 'package:auth_social/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    final sp = context.read<SignInProvider>();
    super.initState();

    Timer(Duration(seconds: 2), () {
      sp.isSignedIn == false
          ? Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()))
          : Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image(
          image: AssetImage('assets/login.avif'),
          fit: BoxFit.cover,
        ),
      )),
    );
  }
}
