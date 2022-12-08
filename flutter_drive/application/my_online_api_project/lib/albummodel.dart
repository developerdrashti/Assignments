class albumModel {
  final int? userid;
  final int id;
  final String? title;

  // constructor
  const albumModel({
    required this.userid,
    required this.id,
    required this.title,
  });

  factory albumModel.fromJson(Map<String, dynamic> myjsonResponse) {
    return albumModel(
      userid: myjsonResponse['userid'],
      id: myjsonResponse['id'],
      title: myjsonResponse['title'],
    );
  }
}
