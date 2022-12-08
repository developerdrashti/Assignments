class commentModel {
  final int postId;
  final int id;
  final String? email;
  final String body;
  final String? name;

  // constructor
  const commentModel(
      {required this.postId,
      required this.id,
      required this.email,
      required this.name,
      required this.body});

  factory commentModel.fromJson(Map<String, dynamic> myjsonResponse) {
    return commentModel(
      postId: myjsonResponse['postId'],
      id: myjsonResponse['id'],
      email: myjsonResponse['email'],
      body: myjsonResponse['body'],
      name: myjsonResponse['name'],
    );
  }
}
