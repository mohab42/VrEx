// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// ignore_for_file: await_only_futures, unused_local_variable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrex3/view/view.dart';
import 'package:vrex3/widgets/video/yt_videos.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
class Treatment extends StatefulWidget {
  final String? id;
  static const routename = '/treatment';
  const Treatment({
    super.key,
    this.id,
  });

  @override
  State<Treatment> createState() => _TreatmentState();
}

class _TreatmentState extends State<Treatment> {
  YoutubePlayerController? controller;

  var currentUserLoginUser = FirebaseAuth.instance.currentUser;
  Future getUser() async {
    var currentUserLoginUser = await FirebaseAuth.instance.currentUser;
    var firebaseUser = await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUserLoginUser!.uid);
  }

  launchYoutube(String url) async {
    final Uri uri = Uri(scheme: 'https', host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw "Can't launch url";
    }
  }

  String? userId;

  @override
  void initState() {
    super.initState();
    // Get current user's ID
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (mounted) {
        setState(() {
          userId = currentUserLoginUser!.uid;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (MediaQuery.of(context).orientation == Orientation.landscape)
          ? null
          : AppBar(
              leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const Dashboard2()));
                  },
                  icon: const Icon(Icons.arrow_back)),
              title: const Text('Treatment Plan'),
            ),
      body: FutureBuilder<DocumentSnapshot>(
          future:
              FirebaseFirestore.instance.collection('users').doc(userId).get(),
          builder:
              (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (!snapshot.hasData || !snapshot.data!.exists) {
              return const Text('Document does not exist');
            }
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;

            var vidsList = data['treatment'];

            if (data['treatment'].isEmpty) {
              return Center(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 130,
                    ),
                    Image.network(
                      'https://assets.materialup.com/uploads/c83a9663-be0b-4397-b1af-67f520e44ef1/preview.png',
                    )
                  ],
                ),
              );
            }

            return ListView.builder(
              itemCount: vidsList.length,
              itemBuilder: (context, index) {
                var link = vidsList[index];
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      child: Card(
                        child: Column(
                          children: [
                            YouTubeVideoPlayer(url: '$link'),
                            MaterialButton(
                              onPressed: () async {
                                if (!await launchUrl(Uri.parse(link))) {
                                  throw 'Could not launch $link';
                                }
                              },
                              color: Colors.red[700],
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Watch On ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Image.asset(
                                    'assets/images/icons8-youtube-100.png',
                                    width: 50,
                                    height: 50,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ));
              },
            );
          }),
    );
  }
}
