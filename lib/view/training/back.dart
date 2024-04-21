// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/video/yt_videos.dart';
import '../view.dart';

class Back extends StatelessWidget {
  const Back({super.key});

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
              title: const Text('Back'),
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
              url: 'https://www.youtube.com/watch?v=nfsQW1uGoBg',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=nfsQW1uGoBg'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=nfsQW1uGoBg"';
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
              url: 'https://www.youtube.com/watch?v=rLOaX9pp7xM',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=rLOaX9pp7xM'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=rLOaX9pp7xM"';
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
              url: 'https://www.youtube.com/watch?v=6JZZTLfoNMY',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=6JZZTLfoNMY'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=6JZZTLfoNMY"';
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
              url: 'https://www.youtube.com/watch?v=QqZV3JEoOlc',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=QqZV3JEoOlc'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=QqZV3JEoOlc"';
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
              url: 'https://www.youtube.com/watch?v=iowsSHN-Flo',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=iowsSHN-Flo'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=iowsSHN-Flo"';
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
              url: 'https://www.youtube.com/watch?v=SOvsUhLCdys',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=SOvsUhLCdys'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=SOvsUhLCdys"';
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
              url: 'https://www.youtube.com/watch?v=i1tjJGGcoYs',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=i1tjJGGcoYs'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=i1tjJGGcoYs"';
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
              url: 'https://www.youtube.com/watch?v=imRJUblCTjw',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=imRJUblCTjw'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=imRJUblCTjw"';
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
              url: 'https://www.youtube.com/watch?v=imRJUblCTjw',
            ),
            MaterialButton(
              onPressed: () async {
                if (!await launchUrl(
                    Uri.parse('https://www.youtube.com/watch?v=imRJUblCTjw'))) {
                  throw 'Could not launch "https://www.youtube.com/watch?v=imRJUblCTjw"';
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
