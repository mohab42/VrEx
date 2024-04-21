// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vrex3/view/view.dart';
import 'package:vrex3/widgets/video/yt_videos.dart';

class Arms extends StatelessWidget {
  const Arms({super.key});

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
              title: const Text('Arms'),
              leading: IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Training.routename);
                },
                icon: const Icon(Icons.arrow_back_rounded),
              ),
            ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          const YouTubeVideoPlayer(
            url: 'https://www.youtube.com/watch?v=wwKb-wZCEjs',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(
                  Uri.parse('https://www.youtube.com/watch?v=wwKb-wZCEjs'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=wwKb-wZCEjs"';
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
            url:
                'https://www.youtube.com/watch?v=rYrM6D8ChM4&list=PLlDgqw9V272l9Ro4fhn6ioxop29Fnh0u9',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(Uri.parse(
                  'https://www.youtube.com/watch?v=rYrM6D8ChM4&list=PLlDgqw9V272l9Ro4fhn6ioxop29Fnh0u9'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=rYrM6D8ChM4&list=PLlDgqw9V272l9Ro4fhn6ioxop29Fnh0u9"';
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
            url: 'https://www.youtube.com/watch?v=L9drBgXIKis',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(
                  Uri.parse('https://www.youtube.com/watch?v=L9drBgXIKis'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=L9drBgXIKis"';
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
            url: 'https://www.youtube.com/watch?v=er7ysEHhWt4',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(
                  Uri.parse('https://www.youtube.com/watch?v=er7ysEHhWt4'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=er7ysEHhWt4"';
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
            url: 'https://www.youtube.com/watch?v=c9wmvgcsj7g',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(
                  Uri.parse('https://www.youtube.com/watch?v=c9wmvgcsj7g'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=c9wmvgcsj7g"';
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
            url: 'https://www.youtube.com/watch?v=aTN9nyUJ56Y',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(
                  Uri.parse('https://www.youtube.com/watch?v=aTN9nyUJ56Y'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=aTN9nyUJ56Y"';
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
            url: 'https://www.youtube.com/watch?v=CP9n_Hm4FCE',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(
                  Uri.parse('https://www.youtube.com/watch?v=aTN9nyUJ56Y'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=aTN9nyUJ56Y"';
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
            url: 'https://www.youtube.com/watch?v=AjawOUKbdko',
          ),
          MaterialButton(
            onPressed: () async {
              if (!await launchUrl(
                  Uri.parse('https://www.youtube.com/watch?v=AjawOUKbdko'))) {
                throw 'Could not launch "https://www.youtube.com/watch?v=AjawOUKbdko"';
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
        ]),
      ),
    );
  }
}
