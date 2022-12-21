class MyModelimage {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  //constructor
  const MyModelimage({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });
  factory MyModelimage.fromjson(Map<String, dynamic> myjsonResponse) {
    return MyModelimage(
      albumId: myjsonResponse['albumId'],
      id: myjsonResponse['id'],
      title: myjsonResponse['title'],
      url: myjsonResponse['url'],
      thumbnailUrl: myjsonResponse['thumbnailUrl'],
    );
  }
}
