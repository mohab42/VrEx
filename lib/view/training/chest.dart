// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrex3/view/view.dart';
import 'package:vrex3/widgets/video/yt_videos.dart';

class Chest extends StatelessWidget {
  const Chest({super.key});

  @override
  Widget build(BuildContext context) {
    launchYoutube(String url) async {
      final Uri uri = Uri(scheme: 'https', host: url);
      if (!await launchUrl(
        uri,
        mode: LaunchMode.externalApplication,
      )) {
        throw "Can't launch url";
      }
    }

    return Scaffold(
      appBar: MediaQuery.of(context).orientation == Orientation.landscape
          ? null
          : AppBar(
              title: const Text('Chest'),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Training.routename);
                  },
                  icon: const Icon(Icons.arrow_back_rounded)),
            ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const YouTubeVideoPlayer(
                url:
                    'https://youtube.com/watch?v=jWc8gHlAkoM&si=8f36pLLCQBpAmWzV'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://youtube.com/watch?v=jWc8gHlAkoM&si=8f36pLLCQBpAmWzV'))) {
                  throw 'Could not launch "https://youtube.com/watch?v=jWc8gHlAkoM&si=8f36pLLCQBpAmWzV"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const YouTubeVideoPlayer(
                url:
                    'https://www.youtube.com/watch?v=jWc8gHlAkoM&list=PLC4547D1A6C65936F&index=2'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=jWc8gHlAkoM&list=PLC4547D1A6C65936F&index=2'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=jWc8gHlAkoM&list=PLC4547D1A6C65936F&index=2"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const YouTubeVideoPlayer(
                url:
                    'https://www.youtube.com/watch?v=kIaqbrWBexY&list=PLC4547D1A6C65936F&index=3'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=kIaqbrWBexY&list=PLC4547D1A6C65936F&index=3'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=kIaqbrWBexY&list=PLC4547D1A6C65936F&index=3"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const YouTubeVideoPlayer(
                url:
                    'https://www.youtube.com/watch?v=C4139dLyqDQ&list=PLC4547D1A6C65936F&index=4'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=C4139dLyqDQ&list=PLC4547D1A6C65936F&index=4'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=C4139dLyqDQ&list=PLC4547D1A6C65936F&index=4"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const YouTubeVideoPlayer(
                url:
                    'https://www.youtube.com/watch?v=GV-bhseI2ho&list=PLC4547D1A6C65936F&index=5'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=GV-bhseI2ho&list=PLC4547D1A6C65936F&index=5'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=GV-bhseI2ho&list=PLC4547D1A6C65936F&index=5"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const YouTubeVideoPlayer(
                url:
                    'https://www.youtube.com/watch?v=nV80y796Gwk&list=PLC4547D1A6C65936F&index=6'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=nV80y796Gwk&list=PLC4547D1A6C65936F&index=6'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=nV80y796Gwk&list=PLC4547D1A6C65936F&index=6"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const YouTubeVideoPlayer(
                url:
                    'https://www.youtube.com/watch?v=vBzbt-QlQSY&list=PLC4547D1A6C65936F&index=7'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=vBzbt-QlQSY&list=PLC4547D1A6C65936F&index=7'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=vBzbt-QlQSY&list=PLC4547D1A6C65936F&index=7"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            const YouTubeVideoPlayer(
                url:
                    'https://www.youtube.com/watch?v=ImNFOaCcWZs&list=PLC4547D1A6C65936F&index=8'),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(Uri.parse(
                    'https://www.youtube.com/watch?v=ImNFOaCcWZs&list=PLC4547D1A6C65936F&index=8'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=ImNFOaCcWZs&list=PLC4547D1A6C65936F&index=8"';
                }
              },
              color: Colors.red[700],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Watch On ',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Image.asset(
                    'assets/images/icons8-youtube-100.png',
                    width: 50,
                    height: 50,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
