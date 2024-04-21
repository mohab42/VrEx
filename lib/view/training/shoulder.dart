// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/video/yt_videos.dart';
import '../view.dart';

class Shoulders extends StatelessWidget {
  const Shoulders({super.key});

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
              title: const Text('Shoulders'),
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
              url: 'https://www.youtube.com/watch?v=8WhDpYg-tD4',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=8WhDpYg-tD4'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=8WhDpYg-tD4"';
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
            const SizedBox(height: 20),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=viPwtMPU2pk',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=viPwtMPU2pk'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=viPwtMPU2pk"';
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
            const SizedBox(height: 20),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=D5aUaAOR4yk',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=D5aUaAOR4yk'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=D5aUaAOR4yk"';
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
            const SizedBox(height: 20),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=ZdsGGqXn8W0',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=ZdsGGqXn8W0'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=ZdsGGqXn8W0"';
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
            const SizedBox(height: 20),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=TUnnz5i4Mnw',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=TUnnz5i4Mnw'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=TUnnz5i4Mnw"';
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
            const SizedBox(height: 20),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=alWWqJ8blZg',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=alWWqJ8blZg'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=alWWqJ8blZg"';
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
            const SizedBox(height: 20),
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=Z0x6VOppTxM',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=Z0x6VOppTxM'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=Z0x6VOppTxM"';
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
