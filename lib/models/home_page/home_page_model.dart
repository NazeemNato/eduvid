import 'dart:convert';

class HomePageModel {
    HomePageModel({
        this.streamName,
        this.createdBy,
        this.videos,
    });

    final String streamName;
    final String createdBy;
    final List<Video> videos;

    HomePageModel copyWith({
        String streamName,
        String createdBy,
        List<Video> videos,
    }) => 
        HomePageModel(
            streamName: streamName ?? this.streamName,
            createdBy: createdBy ?? this.createdBy,
            videos: videos ?? this.videos,
        );

    factory HomePageModel.fromJson(String str) => HomePageModel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory HomePageModel.fromMap(Map<String, dynamic> json) => HomePageModel(
        streamName: json["stream_name"],
        createdBy: json["created_by"],
        videos: List<Video>.from(json["videos"].map((x) => Video.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "stream_name": streamName,
        "created_by": createdBy,
        "videos": List<dynamic>.from(videos.map((x) => x.toMap())),
    };
}

class Video {
    Video({
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

    Video copyWith({
        int id,
        String title,
        String description,
        String time,
        String video,
        String thumbnail,
    }) => 
        Video(
            id: id ?? this.id,
            title: title ?? this.title,
            description: description ?? this.description,
            time: time ?? this.time,
            video: video ?? this.video,
            thumbnail: thumbnail ?? this.thumbnail,
        );

    factory Video.fromJson(String str) => Video.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Video.fromMap(Map<String, dynamic> json) => Video(
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
