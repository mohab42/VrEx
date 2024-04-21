import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:vrex3/view/view.dart';

class AdminLoginPage extends StatelessWidget {
  static const routeName = '/admin_login';
  const AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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

    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Colors.black87,
            Colors.black,
            Colors.black45,
          ],
        )),
        child: MediaQuery.of(context).orientation == Orientation.portrait
            ? Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        'Admin Login',
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
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey.shade200))),
                                    child: TextFormField(
                                      controller: username,
                                      decoration: const InputDecoration(
                                          hintText: "Username",
                                          prefixIcon: Icon(
                                            Icons.person,
                                            color: Colors.black38,
                                          ),
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
                                                color: Colors.grey.shade200))),
                                    child: TextFormField(
                                      controller: password,
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                          hintText: "Password",
                                          prefixIcon: Icon(
                                            Icons.lock,
                                            color: Colors.black38,
                                          ),
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
                                onPressed: () {
                                  if (username.text == 'therapist@' &&
                                      password.text == '12345678') {
                                    Navigator.pushReplacementNamed(
                                        context, AdminPanel.routename);
                                  } else {
                                    showErrorDialog('Enter Valid Credentials');
                                  }
                                },
                                height: 50,
                                color: Colors.black,
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
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ])
            : ListView(
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
                          'Admin Login',
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
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(),
                                  child: Column(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color:
                                                        Colors.grey.shade200))),
                                        child: TextFormField(
                                          controller: username,
                                          decoration: const InputDecoration(
                                              hintText: "Username",
                                              prefixIcon: Icon(
                                                Icons.person,
                                                color: Colors.black38,
                                              ),
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
                                              prefixIcon: Icon(
                                                Icons.lock,
                                                color: Colors.black38,
                                              ),
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
                                    onPressed: () {
                                      if (username.text == 'therapist@' &&
                                          password.text == '12345678') {
                                        Navigator.pushReplacementNamed(
                                            context, AdminPanel.routename);
                                      } else {
                                        showErrorDialog(
                                            'Enter Valid Credentials');
                                      }
                                    },
                                    height: 50,
                                    color: Colors.black,
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
                              ],
                            ),
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
