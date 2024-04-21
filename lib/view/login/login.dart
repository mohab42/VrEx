// ignore_for_file: unused_local_variable, use_build_context_synchronously

import 'package:animate_do/animate_do.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vrex3/view/view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const routename = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Color w = Colors.white;

    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    void showErrorDialog(String message) {
      showDialog(
          context: context,
          builder: (ctx) {
            return AlertDialog(
              title: const Text('An Error Occured'),
              content: Text(message),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Okay'),
                )
              ],
            );
          });
    }

    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.blue.shade900,
            Colors.blue.shade800,
            Colors.blue.shade400,
          ],
        )),
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/login_options');
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Welcome Back',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: FadeInUp(
                      duration: const Duration(milliseconds: 1500),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: ListView(
                            children: [
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      height: 150,
                                      child: CircleAvatar(
                                        child: Image.asset(
                                          'assets/images/logo4.jpeg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color:
                                                      Colors.grey.shade200))),
                                      child: TextFormField(
                                        controller: email,
                                        decoration: const InputDecoration(
                                            hintText: "Username",
                                            prefixIcon: Icon(Icons.person),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color:
                                                      Colors.grey.shade200))),
                                      child: TextFormField(
                                        controller: password,
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: "Password",
                                            prefixIcon: Icon(Icons.lock),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              MaterialButton(
                                  onPressed: () async {
                                    try {
                                      final credential = await FirebaseAuth
                                          .instance
                                          .signInWithEmailAndPassword(
                                        email: email.text,
                                        password: password.text,
                                      );
                                      Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          Dashboard2.routename,
                                          (route) => false);
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'user-not-found') {
                                        showErrorDialog(
                                            'No user found for that email.');
                                      } else if (e.code == 'wrong-password') {
                                        showErrorDialog(
                                            'Wrong password provided for that user.');
                                      }
                                    }
                                  },
                                  height: 50,
                                  color: Colors.blue[800],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Don\'t have an account?',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 11.5),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, SignupPage.routename);
                                      },
                                      child: Text(
                                        'Sign up now',
                                        style: TextStyle(
                                          fontSize: 11.5,
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: IconButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .pushReplacementNamed('/login_options');
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              )),
                        ),
                        const SizedBox(
                          height: 80,
                        ),
                        const Text(
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Welcome Back',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: FadeInUp(
                      duration: const Duration(milliseconds: 1500),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      width: 150,
                                      height: 150,
                                      child: CircleAvatar(
                                        child: Image.asset(
                                          'assets/images/logo4.jpeg',
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color:
                                                      Colors.grey.shade200))),
                                      child: TextFormField(
                                        controller: email,
                                        decoration: const InputDecoration(
                                            hintText: "Username",
                                            prefixIcon: Icon(Icons.person),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                                  color:
                                                      Colors.grey.shade200))),
                                      child: TextFormField(
                                        controller: password,
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                            hintText: "Password",
                                            prefixIcon: Icon(Icons.lock),
                                            hintStyle:
                                                TextStyle(color: Colors.grey),
                                            border: InputBorder.none),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              MaterialButton(
                                  onPressed: () async {
                                    try {
                                      final credential = await FirebaseAuth
                                          .instance
                                          .signInWithEmailAndPassword(
                                        email: email.text,
                                        password: password.text,
                                      );
                                      Navigator.pushNamedAndRemoveUntil(
                                          context,
                                          Dashboard2.routename,
                                          (route) => false);
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'user-not-found') {
                                        showErrorDialog(
                                            'No user found for that email.');
                                      } else if (e.code == 'wrong-password') {
                                        showErrorDialog(
                                            'Wrong password provided for that user.');
                                      }
                                    }
                                  },
                                  height: 50,
                                  color: Colors.blue[800],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Don\'t have an account?',
                                      style: TextStyle(
                                          color: Colors.grey.shade700,
                                          fontSize: 11.5),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacementNamed(
                                            context, SignupPage.routename);
                                      },
                                      child: Text(
                                        'Sign up now',
                                        style: TextStyle(
                                          fontSize: 11.5,
                                          color: Colors.blue[800],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
