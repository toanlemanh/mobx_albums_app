import 'package:json_annotation/json_annotation.dart';

part 'album.g.dart';

@JsonSerializable()
class Album {
   int? id;
   int? userId;
   String? title;
   String? url;
   String? thumbnailUrl;

  Album({
     this.id,
     this.userId,
     this.title,
     this.url,
     this.thumbnailUrl,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return _$AlbumFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AlbumToJson(this);
  }

  @override
  String toString() {
    return 'Album(title: $title, url: $url, thumbnailUrl: $thumbnailUrl)';
  }

  // Example of a method that could be added to the Album class
  String getAlbumInfo() {
    return '$title by $url';
  }
}