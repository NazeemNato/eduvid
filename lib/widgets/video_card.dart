import 'package:eduvid/models/models.dart';
import 'package:eduvid/screens/screens.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard({Key key, this.video}) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => VideoScreen(video: video),
          ),
        );
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                video.thumbnail,
                height: 220.0,
                width: double.infinity,
                fit: BoxFit.cover,
                headers: {'Access-Control-Allow-Origin': '*'},
              ),
              Positioned(
                right: 8,
                bottom: 8,
                child: Container(
                  padding: const EdgeInsets.all(4.0),
                  color: Colors.black,
                  child: Text(
                    video.time,
                    style: Theme.of(context)
                        .textTheme
                        .caption
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  video.title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      .copyWith(fontSize: 15.0),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
