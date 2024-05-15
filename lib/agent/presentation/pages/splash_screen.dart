import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/pages/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushReplacement(
        context, 
        MaterialPageRoute(
          builder: (context) => const WelcomeScreen())));
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff68A4FF),
              Colors.white,
              ],
              ),
        ),
        child: Center(
          child: Image.asset('assets/images/splash.png'),
          ),
      ),
    ); 
  }
}