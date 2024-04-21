// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:vrex3/widgets/video/yt_videos.dart';
import 'package:url_launcher/url_launcher.dart';

import '../view.dart';

class Legs extends StatelessWidget {
  const Legs({super.key});

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
              title: const Text('Legs'),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, Training.routename);
                  },
                  icon: const Icon(Icons.arrow_back_rounded)),
            ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const YouTubeVideoPlayer(
              url: 'https://www.youtube.com/watch?v=841gJUczmzg',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=841gJUczmzg'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=841gJUczmzg"';
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
              url: 'https://www.youtube.com/watch?v=nxi3dBw_JBQ',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=nxi3dBw_JBQ'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=nxi3dBw_JBQ"';
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
              url: 'https://www.youtube.com/watch?v=2-TOX8RFhr8',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=2-TOX8RFhr8'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=2-TOX8RFhr8"';
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
              url: 'https://www.youtube.com/watch?v=Pnq7XPEwlJw',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=Pnq7XPEwlJw'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=Pnq7XPEwlJw"';
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
              url: 'https://www.youtube.com/watch?v=o1IJNdgP5gQ',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=o1IJNdgP5gQ'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=o1IJNdgP5gQ"';
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
              url: 'https://www.youtube.com/watch?v=XF7LGEOoHGU',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=XF7LGEOoHGU'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=XF7LGEOoHGU"';
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
              url: 'https://www.youtube.com/watch?v=RWlsnA7TANY',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=RWlsnA7TANY'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=RWlsnA7TANY"';
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
