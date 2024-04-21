// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
// import 'package:vrex3/models/users/patients.dart';
import 'package:vrex3/view/view.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    Color b = Colors.blue.shade800;

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.transparent, borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Dashboard2.routename);
              },
              icon: Icon(
                Icons.home,
                color: b,
                size: 19,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Treatment.routename);
              },
              icon: Icon(
                Icons.notes,
                color: b,
                size: 19,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Training.routename);
              },
              icon: Icon(
                Icons.sports_gymnastics_sharp,
                color: b,
                size: 19,
              )),
        ],
      ),
    );
  }
}
