import 'package:flutter/material.dart';
import 'package:task/registration.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(seconds: 2),
      () {
        return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RegistrationPage(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF004333),
      body: SafeArea(
        child: Center(
          child: Text(
            'HalalFood',
            style: TextStyle(
              fontFamily: 'Gravedigger',
              fontWeight: FontWeight.w400,
              fontSize: 32,
              color: Color(0xFF96A4A0),
              shadows: [
                Shadow(
                  color: Colors.black.withOpacity(.25),
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
