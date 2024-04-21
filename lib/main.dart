// ignore_for_file: avoid_print

import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'view/view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyDY7l_ktMyyYYrQfgYjt-0JAVgCcg5RDIM',
            appId: '1:946266863940:android:97a5245eaaa774a3fd7f11',
            messagingSenderId: '946266863940',
            projectId: 'vrex-26c70',
            storageBucket: "vrex-26c70.appspot.com",
          ),
        )
      : await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('=========== User is currently signed out!');
      } else {
        print('=========== User is signed in!');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Progress.routename: (context) => const Progress(),
        LoginPage.routename: (context) => const LoginPage(),
        MyLoginOptions.routeName: (context) => const MyLoginOptions(),
        SignupPage.routename: (context) => const SignupPage(),
        SplashScreen.routename: (context) => const SplashScreen(),
        Dashboard2.routename: (context) => const Dashboard2(),
        AdminPanel.routename: (context) => const AdminPanel(),
        AdminLoginPage.routeName: (context) => const AdminLoginPage(),
        UserDetailsScreen.routename: (context) => const UserDetailsScreen(),
        Treatment.routename: (context) => const Treatment(),
        Training.routename: (context) => const Training(),
        Profile.routename: (context) => const Profile()
      },
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
