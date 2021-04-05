import 'dart:convert';

class VideoPlayerPageModel {
    VideoPlayerPageModel({
        this.id,
        this.title,
        this.description,
        this.time,
        this.video,
        this.thumbnail,
    });

    final int id;
    final String title;
    final String description;
    final String time;
    final String video;
    final String thumbnail;

    VideoPlayerPageModel copyWith({
        int id,
        String title,
        String description,
        String time,
        String video,
        String thumbnail,
    }) => 
        VideoPlayerPageModel(
            id: id ?? this.id,
            title: title ?? this.title,
            description: description ?? this.description,
            time: time ?? this.time,
            video: video ?? this.video,
            thumbnail: thumbnail ?? this.thumbnail,
        );

    factory VideoPlayerPageModel.fromJson(String str) => VideoPlayerPageModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory VideoPlayerPageModel.fromMap(Map<String, dynamic> json) => VideoPlayerPageModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        time: json["time"],
        video: json["video"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "description": description,
        "time": time,
        "video": video,
        "thumbnail": thumbnail,
    };
}
