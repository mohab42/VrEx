// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrex3/widgets/video/yt_videos.dart';

import '../view.dart';

class Abs extends StatelessWidget {
  const Abs({super.key});

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
              title: const Text('Abs'),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Training.routename);
                },
                icon: const Icon(Icons.arrow_back_outlined),
              ),
            ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=riQuNlBzRsA',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=riQuNlBzRsA'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=riQuNlBzRsA"';
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
            const SizedBox(
              height: 20,
            ),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=X--97_D8H8k',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=X--97_D8H8k'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=X--97_D8H8k"';
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
            const SizedBox(
              height: 20,
            ),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=xhxmMnhLGq0',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=xhxmMnhLGq0'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=xhxmMnhLGq0"';
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
            const SizedBox(
              height: 20,
            ),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=D0K-U0pFj4k',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=xhxmMnhLGq0'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=xhxmMnhLGq0"';
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
            const SizedBox(
              height: 20,
            ),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=dMzJnF5OhxA',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=dMzJnF5OhxA'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=dMzJnF5OhxA"';
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
            const SizedBox(
              height: 20,
            ),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=Bg-vBfORcgo',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=Bg-vBfORcgo'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=Bg-vBfORcgo"';
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
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
