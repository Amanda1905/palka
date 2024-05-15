import 'package:flutter/material.dart';
import 'package:lapka/agent/presentation/pages/login_screen.dart';
import 'package:lapka/agent/presentation/pages/reg_screen.dart';
import 'package:lapka/agent/presentation/widget/theme.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xff68A4FF), Colors.white])),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                children: [
                  const Image(
                    image: AssetImage('assets/images/frame.png'),
                    height: 400,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Column(
                      children: [
                        Text(
                          "Find\nYour Easily\nCargo",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 25),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Nikmati pengalaman yang sederhana dan praktis dalam merencanakan perjalanan laut Anda.',
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 8,
                        shadowColor: Colors.black,
                        backgroundColor: const Color(0xff5875DC),
                        minimumSize: const Size.fromHeight(45)),
                    child: Text(
                      "Login",
                      textAlign: TextAlign.center,
                      style: mediumWhiteTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 8,
                        shadowColor: Colors.black,
                        backgroundColor: Colors.white,
                        minimumSize: const Size.fromHeight(45)),
                    child: Text(
                      "Sign Up",
                      textAlign: TextAlign.center,
                      style: mediumBlackTextStyle.copyWith(fontSize: 15)),
                      ),
                    ],
                  ),
            ),
              ),
            ),
          ),
    );
  }
}
