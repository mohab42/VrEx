import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:vrex3/view/view.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue[800],
      width: 200,
      child: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue[800],
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, Treatment.routename);
              },
              title: const Text(
                'Treatment Plan',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: const Icon(
                Icons.notes,
                size: 19,
                color: Colors.white,
              ),
              tileColor: Colors.blue[800],
            ),
            const SizedBox(height: 50),
            ListTile(
              onTap: () {
                Navigator.pushReplacementNamed(context, Training.routename);
              },
              title: const Text(
                'Start Workout',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              trailing: const Icon(
                Icons.sports_gymnastics_outlined,
                size: 19,
                color: Colors.white,
              ),
              tileColor: Colors.blue[800],
            ),
            const SizedBox(height: 50),
            Container(
              width: double.infinity,
              color: Colors.blue[800],
              child: TextButton.icon(
                  style: const ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        MyLoginOptions.routeName, (route) => false);
                  },
                  icon: const Icon(Icons.exit_to_app),
                  label: const Text(
                    'Logout',
                    style: TextStyle(color: Colors.white),
                  )),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
