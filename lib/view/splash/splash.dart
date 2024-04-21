import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vrex3/view/view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const routename = '/splash';

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 2),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
                builder: (context) => FirebaseAuth.instance.currentUser == null
                    ? const MyLoginOptions()
                    : const Dashboard2()),
            (route) => false));
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo4.jpeg'),
            const Center(
              child: Text(
                textAlign: TextAlign.center,
                'Virtual Excercises, Realistic Outcomes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
