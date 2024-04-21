import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeVideoPlayer extends StatefulWidget {
  const YouTubeVideoPlayer({super.key, required this.url});
  final String url;
  @override
  State<YouTubeVideoPlayer> createState() => _YouTubeVideoPlayerState();
}

class _YouTubeVideoPlayerState extends State<YouTubeVideoPlayer> {
  late YoutubePlayerController _youtubePlayerController;
  @override
  void initState() {
    String? videoId = YoutubePlayer.convertUrlToId(widget.url);
    videoId ??= '';
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: videoId,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          // width: MediaQuery.of(context).size.width,
          controller: _youtubePlayerController,
          showVideoProgressIndicator: true,
          aspectRatio: 16 / 9,
          bottomActions: [
            CurrentPosition(),
            ProgressBar(
              isExpanded: true,
              colors: ProgressBarColors(
                playedColor: Colors.red.shade800,
                handleColor: Colors.white,
              ),
            ),
            const PlaybackSpeedButton(),
            FullScreenButton(
              color: Colors.white,
            ),
          ],
        ),
        builder: (context, player) {
          return player;
        });
  }
}
