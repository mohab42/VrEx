// ignore_for_file: unused_local_variable, use_build_context_synchronously, await_only_futures

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vrex3/models/users/patients.dart';

class UserDetailsScreen extends StatefulWidget {
  final Patients? patient;

  const UserDetailsScreen({
    super.key,
    this.patient,
  });
  static const routename = '/user_details';

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  TextEditingController link = TextEditingController();
  TextEditingController progress = TextEditingController();
  TextEditingController updates = TextEditingController();

  String? userId;

  @override
  void initState() {
    super.initState();
    // Get current user's ID
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (mounted) {
        setState(() {
          userId = widget.patient!.id;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.patient!.username),
        centerTitle: true,
      ),
      body: SizedBox(
        width: deviceSize.width,
        height: deviceSize.height,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder(
              future: FirebaseFirestore.instance
                  .collection('users')
                  .doc(userId)
                  .get(),
              builder: (context, snapshot) {
                // if (snapshot.connectionState == ConnectionState.waiting) {
                //   return const CircularProgressIndicator();
                // }
                return Center(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(widget.patient!.imageUrl)),
                          ),
                        ),
                        const Text('Id:', style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.id,
                        ),
                        const Text('Username:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.username,
                        ),
                        const Text('E-mail:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.email,
                        ),
                        const Text('Password:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.password,
                        ),
                        const Text('Phone:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.phoneNumber,
                        ),
                        const Text('Age:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.age,
                        ),
                        const Text('Address:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.address,
                        ),
                        const Text('Condition:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.condition,
                        ),
                        const Text('Progress:',
                            style: TextStyle(color: Colors.grey)),
                        Text(
                          widget.patient!.progress,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: link,
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38)),
                            labelText: 'Add Link',
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            hintText: 'Enter Your Link',
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.blue.shade700)),
                            onPressed: () async {
                              DocumentReference docRef = FirebaseFirestore
                                  .instance
                                  .collection('users')
                                  .doc(userId);
                              DocumentSnapshot doc = await docRef.get();
                              final treatment = snapshot.data!['treatment'];
                              if (treatment.contains(link.text) == true ||
                                  treatment.contains("") == true) {
                                docRef.update({
                                  'treatment':
                                      FieldValue.arrayRemove([link.text])
                                });
                              }
                              docRef.update({
                                'treatment': FieldValue.arrayUnion([link.text])
                              });
                              await ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text(
                                  'Video Added Successfully',
                                  style: TextStyle(color: Colors.white),
                                ),
                                backgroundColor: Colors.green,
                              ));
                              link.clear();
                            },
                            child: const Text(
                              'Add',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 1,
                        ),
                        TextFormField(
                          controller: progress,
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38)),
                            labelText: 'Update Progress',
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            hintText: 'Enter Patient Progress',
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.blue.shade700)),
                              onPressed: () async {
                                DocumentReference docRef = FirebaseFirestore
                                    .instance
                                    .collection('users')
                                    .doc(userId);
                                docRef.update(
                                  {
                                    'progress': progress.text,
                                  },
                                );
                                await ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  const SnackBar(
                                    backgroundColor: Colors.green,
                                    content: Text(
                                      'Progress Updated Successfully',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                                progress.clear();
                              },
                              child: const Text(
                                'Update Progress',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                        TextFormField(
                          maxLines: 8,
                          controller: updates,
                          decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38)),
                            labelText: 'Updates',
                            labelStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            hintText: 'Patient Updates',
                            hintStyle:
                                TextStyle(color: Colors.black.withOpacity(0.5)),
                            border: const OutlineInputBorder(
                              borderSide: BorderSide(),
                            ),
                          ),
                        ),
                        Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.blue.shade700)),
                              onPressed: () async {
                                DocumentReference docRef = FirebaseFirestore
                                    .instance
                                    .collection('users')
                                    .doc(userId);
                                final newUpdates =
                                    snapshot.data!['new_updates'];
                                if (newUpdates.contains("")) {
                                  docRef.update({
                                    'new_updates':
                                        FieldValue.arrayRemove([updates.text])
                                  });
                                }
                                docRef.update({
                                  'new_updates':
                                      FieldValue.arrayUnion([updates.text])
                                });
                                await ScaffoldMessenger.of(context)
                                    .showSnackBar(
                                  const SnackBar(
                                    backgroundColor: Colors.green,
                                    content: Text(
                                      'Paitent Updates are done Successfully',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                                updates.clear();
                              },
                              child: const Text(
                                'Update Paitent Condition',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
