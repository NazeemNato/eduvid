import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({
    Key key,
    this.videoPlayerController,
  }) : super(key: key);

  final VideoPlayerController videoPlayerController;

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  ChewieController _chewieController;
  @override
  void initState() {
    _chewieController = ChewieController(

      videoPlayerController: widget.videoPlayerController,
      looping: true,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      autoPlay: true,
      fullScreenByDefault: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Chewie(
      controller: _chewieController,
    );
  }
}
