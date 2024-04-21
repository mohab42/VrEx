import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:vrex3/view/view.dart';

class MyLoginOptions extends StatelessWidget {
  static const routeName = '/login_options';

  const MyLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.center,
                colors: [
                  Colors.blue.shade900,
                  Colors.blue.shade800,
                ],
              )),
              child: ListView(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/images/vr.jpeg',
                      width: 200,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Center(
                    child: Text(
                      'Welcome to your Online Clinc',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: SizedBox(
                        height: 200,
                        child: Card(
                          color: Colors.blueAccent.shade200,
                          child: FadeInUp(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade700,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ListTile(
                                      trailing: const Icon(
                                        Icons.arrow_circle_right_rounded,
                                        color: Colors.white,
                                      ),
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context, LoginPage.routename);
                                      },
                                      title: const Text(
                                        'Login as Patient?',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade700,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ListTile(
                                      trailing: const Icon(
                                        Icons.arrow_circle_right_rounded,
                                        color: Colors.white,
                                      ),
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context, AdminLoginPage.routeName);
                                      },
                                      title: const Text(
                                        'Login as Admin?',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
