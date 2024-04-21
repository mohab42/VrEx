// ignore_for_file: unused_local_variable, avoid_print, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:vrex3/view/view.dart';

import '../../models/models.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({
    super.key,
  });
  static const routename = '/admin';

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  final List data = [];

  getData() async {
    final snapshot = await FirebaseFirestore.instance.collection('users').get();
    data.addAll(snapshot.docs);
    setState(() {});
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Panel'),
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, MyLoginOptions.routeName, (route) => false);
          },
          icon: const Icon(Icons.exit_to_app_sharp),
        ),
      ),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          if (data.isEmpty) {
            return const Center(
              child: Text('There are no users-yet.'),
            );
          }
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserDetailsScreen(
                          patient: Patients(
                            id: data[index]['id'],
                            username: data[index]['username'],
                            email: data[index]['email'],
                            password: data[index]['password'],
                            age: data[index]['age'],
                            address: data[index]['address'],
                            phoneNumber: data[index]['phone'],
                            condition: data[index]['condition'],
                            imageUrl: data[index]['imageUrl'],
                            progress: data[index]['progress'],
                          ),
                        )),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          NetworkImage('${data[index]['imageUrl']}'),
                    ),
                    Text('${data[index]['username']}'),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.black,
                      size: 20,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
