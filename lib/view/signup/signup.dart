// ignore_for_file: use_build_context_synchronously, avoid_print, unnecessary_null_comparison,
import 'dart:io';
import 'package:animate_do/animate_do.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vrex3/view/view.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});
  static const routename = '/signup';

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  File? pickedImage;

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController address = TextEditingController();
    TextEditingController age = TextEditingController();
    TextEditingController physicalCondition = TextEditingController();

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

    final auth = FirebaseAuth.instance;
    late UserCredential credential;

    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          width: deviceSize.width,
          height: deviceSize.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.blue[900]!,
              Colors.blue[800]!,
              Colors.blue[400]!,
            ],
          )),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 80,
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome to our clinc, Create an account and explore now',
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
                    child: Form(
                      key: formKey,
                      child: ListView(
                        children: [
                          Container(
                            decoration: const BoxDecoration(),
                            child: Column(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        TextButton.icon(
                                          onPressed: () async {
                                            final camerapickedImage =
                                                await ImagePicker().pickImage(
                                                    source: ImageSource.camera);

                                            if (camerapickedImage == null) {
                                              return;
                                            }
                                            setState(() {
                                              pickedImage =
                                                  File(camerapickedImage.path);
                                            });
                                          },
                                          icon: Icon(
                                              Icons.photo_camera_outlined,
                                              color: Colors.blue.shade800),
                                          label: Text(
                                            'Add Image\n from Camera',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.blue.shade900),
                                          ),
                                        ),
                                        TextButton.icon(
                                          onPressed: () async {
                                            final gallerypickedImage =
                                                await ImagePicker().pickImage(
                                                    source:
                                                        ImageSource.gallery);
                                            if (gallerypickedImage == null) {
                                              return;
                                            }
                                            setState(() {
                                              pickedImage =
                                                  File(gallerypickedImage.path);
                                            });
                                          },
                                          icon: Icon(Icons.image_outlined,
                                              color: Colors.blue.shade800),
                                          label: Text(
                                            'Add Image\n from Gallery',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.blue.shade900),
                                            textAlign: TextAlign.center,
                                          ),
                                        )
                                      ],
                                    ),
                                    CircleAvatar(
                                      radius: 40,
                                      backgroundColor: Colors.grey,
                                      backgroundImage: pickedImage == null
                                          ? null
                                          : FileImage(pickedImage!),
                                    ),
                                  ],
                                ),
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
                                        prefixIcon:
                                            Icon(Icons.person_2_outlined),
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
                                    controller: email,
                                    validator: (value) {
                                      if (value!.isEmpty ||
                                          !value.contains('@')) {
                                        showErrorDialog(
                                            'Please enter a valid e-mail');
                                        return;
                                      } else {
                                        return null;
                                      }
                                    },
                                    decoration: const InputDecoration(
                                        hintText: "Email",
                                        prefixIcon: Icon(Icons.email_outlined),
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
                                        prefixIcon: Icon(Icons.lock_outlined),
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
                                    controller: phone,
                                    decoration: const InputDecoration(
                                        hintText: "Phone",
                                        prefixIcon: Icon(Icons.phone_outlined),
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
                                    controller: age,
                                    
                                    decoration: const InputDecoration(
                                        hintText: "Age",
                                        prefixIcon:
                                            Icon(Icons.calendar_month_outlined),
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.grey.shade200))),
                            child: TextFormField(
                              controller: address,
                            
                              decoration: const InputDecoration(
                                  hintText: "Address",
                                  prefixIcon:
                                      Icon(Icons.location_city_outlined),
                                  hintStyle: TextStyle(color: Colors.grey),
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
                              controller: physicalCondition,
                             
                              decoration: const InputDecoration(
                                  hintText: "Physical Issue",
                                  prefixIcon: Icon(Icons.medical_information),
                                  hintStyle: TextStyle(color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          MaterialButton(
                              onPressed: () async {
                                try {
                                  credential =
                                      await auth.createUserWithEmailAndPassword(
                                    email: email.text,
                                    password: password.text,
                                  );

                                  final ref = FirebaseStorage.instance
                                      .ref()
                                      .child('user_image')
                                      .child('${credential.user!.uid}.jpg');

                                  await ref.putFile(pickedImage!);

                                  final url = await ref.getDownloadURL();

                                  await FirebaseFirestore.instance
                                      .collection('users')
                                      .doc(credential.user!.uid)
                                      .set(
                                    {
                                      'id': credential.user!.uid,
                                      'username': username.text,
                                      'email': email.text,
                                      'password': password.text,
                                      'phone': phone.text,
                                      'address': address.text,
                                      'age': age.text,
                                      'condition': physicalCondition.text,
                                      'imageUrl': url,
                                      'progress': '0',
                                      'treatment': [],
                                      'new_updates': [],
                                    },
                                  );
                                  await Navigator.pushNamed(
                                      context, LoginPage.routename);
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    showErrorDialog(
                                        'The password provided is too weak.');
                                  } else if (e.code == 'EMAIL-ALREADY-IN-USE') {
                                    showErrorDialog(
                                        'The account already exists for that email.');
                                  }
                                } catch (e) {
                                  print(e);
                                }
                              },
                              height: 50,
                              color: Colors.blue[800],
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Center(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Already have an account?',
                                  style: TextStyle(
                                      color: Colors.grey.shade700,
                                      fontSize: 11.5),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, LoginPage.routename);
                                  },
                                  child: Text(
                                    'Back to Login',
                                    style: TextStyle(
                                        fontSize: 11.5,
                                        color: Colors.blue.shade800),
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
            ),
          ])),
    );
  }
}
