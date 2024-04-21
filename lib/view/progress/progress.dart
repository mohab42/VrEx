// ignore_for_file: unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vrex3/view/view.dart';

class Progress extends StatefulWidget {
  static const routename = '/progress';
  const Progress({super.key});

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  void initState() {
    super.initState();
    getUser();
  }

  var currentUserLoginUser = FirebaseAuth.instance.currentUser;
  Future getUser() async {
    var currentUserLoginUser = FirebaseAuth.instance.currentUser;
    var firebaseUser = FirebaseFirestore.instance
        .collection('users')
        .doc(currentUserLoginUser!.uid);
  }

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(context, Dashboard2.routename);
          },
        ),
      ),
      body: FutureBuilder<DocumentSnapshot>(
          future: FirebaseFirestore.instance
              .collection('users')
              .doc(currentUserLoginUser!.uid)
              .get(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
                  snapshot.data!.data() as Map<String, dynamic>;
              return SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    addDatebar(),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: CircularPercentIndicator(
                              animation: true,
                              animationDuration: 1000,
                              radius: 70,
                              lineWidth: 20,
                              percent: double.tryParse(data['progress'])!,
                              progressColor: Colors.blue.shade800,
                              backgroundColor: Colors.grey.shade300,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(
                                '${double.tryParse(data['progress'])! * 100}%',
                                style: const TextStyle(fontSize: 25),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        children: [
                          Expanded(
                            child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: data['new_updates'].length,
                              itemBuilder: (context, index) {
                                var newUpdates = data['new_updates'];
                                var upItem = newUpdates[index];
                                if (newUpdates.isEmpty) {
                                  return Center(
                                    child: Text(
                                      'Hi${const Icon(
                                        Icons.waving_hand,
                                        color: Colors.amber,
                                      )},\n Ther Are No updates for now',
                                    ),
                                  );
                                }
                                return Card(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(upItem),
                                        const Icon(
                                          Icons.done,
                                          color: Colors.green,
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
            return const SizedBox();
          }),
    );
  }

  addDatebar() {
    return Container(
      margin: const EdgeInsets.only(top: 6),
      child: DatePicker(
        initialSelectedDate: DateTime.now(),
        activeDates: [DateTime.now()],
        DateTime.now(),
        width: 80,
        height: 100,
        selectionColor: Colors.blue.shade800,
        onDateChange: (newDate) {
          setState(() {
            selectedDate = newDate;
          });
        },
      ),
    );
  }
}
