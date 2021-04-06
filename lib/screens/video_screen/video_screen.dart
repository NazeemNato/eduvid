import 'package:eduvid/models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:video_player/video_player.dart' as vd;

import 'package:eduvid/widgets/widgets.dart';

class VideoScreen extends HookWidget {
  const VideoScreen({Key key,@required this.video}) : super(key: key);
    final Video video;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(video.title)
      ),
      body: VideoPlayer(
        videoPlayerController: vd.VideoPlayerController.network(video.video),
      ),
    );
  }
}
