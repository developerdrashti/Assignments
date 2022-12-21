// To parse this JSON data, do
//
//     final sampleposts = samplepostsFromJson(jsonString);

import 'dart:convert';

List<Sampleposts> samplepostsFromJson(String str) => List<Sampleposts>.from(
    json.decode(str).map((x) => Sampleposts.fromJson(x)));

String samplepostsToJson(List<Sampleposts> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Sampleposts {
  Sampleposts({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  factory Sampleposts.fromJson(Map<String, dynamic> json) => Sampleposts(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
      );

  Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
      };
}
