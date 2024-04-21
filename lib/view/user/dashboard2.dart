// ignore_for_file: unused_local_variable, await_only_futures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:vrex3/widgets/widgets.dart';

import '../../models/models.dart';
import '../view.dart';

class Dashboard2 extends StatefulWidget {
  static const routename = '/dash2';
  const Dashboard2({super.key});

  @override
  State<Dashboard2> createState() => _Dashboard2State();
}

class _Dashboard2State extends State<Dashboard2> {
  @override
  void initState() {
    super.initState();
    getUser();
  }

  var currentUserLoginUser = FirebaseAuth.instance.currentUser;
  Future getUser() async {
    var currentUserLoginUser = await FirebaseAuth.instance.currentUser;
    var firebaseUser = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUserLoginUser!.uid);
  }

  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const MyBottomNav(),
      appBar: AppBar(
        title: const Text('VrEx'),
        centerTitle: true,
        actions: [
          FutureBuilder(
            future: FirebaseFirestore.instance
                .collection('users')
                .doc(currentUserLoginUser!.uid)
                .get(),
            builder: ((context, snapshot) {
              if (!snapshot.hasData) {
                return const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'https://i.pngimg.me/thumb/f/720/m2i8m2A0K9H7N4m2.jpg',
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> data =
                    snapshot.data!.data() as Map<String, dynamic>;
                return Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => Profile(
                              patient: Patients(
                                  id: data['id'],
                                  username: data['username'],
                                  email: data['email'],
                                  password: data['password'],
                                  address: data['address'],
                                  age: data['age'],
                                  phoneNumber: data['phone'],
                                  condition: data['condition'],
                                  imageUrl: data['imageUrl']),
                            ),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('${data['imageUrl']}'),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    )
                  ],
                );
              }
              return const SizedBox();
            }),
          )
        ],
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance
            .collection('users')
            .doc(currentUserLoginUser!.uid)
            .get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        addDatebar(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text(
                                'Hello, ${data['username']}',
                                style: const TextStyle(fontSize: 20),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.waving_hand,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 170,
                                width: double.infinity,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context, Training.routename);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade800,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: const EdgeInsets.all(10),
                                        width: 170,
                                        height: 170,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.sports_gymnastics_rounded,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            Text(
                                              'Start Training',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context, Treatment.routename);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade800,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: const EdgeInsets.all(10),
                                        width: 170,
                                        height: 170,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.notes,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            Text(
                                              'Treatment plan',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushReplacementNamed(
                                            context, Progress.routename);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade800,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: const EdgeInsets.all(10),
                                        width: 170,
                                        height: 170,
                                        child: const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons
                                                  .keyboard_double_arrow_up_sharp,
                                              color: Colors.white,
                                              size: 28,
                                            ),
                                            Text(
                                              'Track your Progress',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 11.5),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Your Progress:',
                          style: TextStyle(fontSize: 25),
                        ),
                        const SizedBox(height: 10),
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
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      drawer: const MyDrawer(),
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
