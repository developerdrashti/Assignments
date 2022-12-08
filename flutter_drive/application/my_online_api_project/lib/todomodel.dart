class todomodel {
  final int? userid;
  final int? id;
  final String? title;
  bool? completed;

  // constructor
  todomodel({
    required this.userid,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory todomodel.fromJson(Map<String, dynamic> myjsonResponse) {
    return todomodel(
      userid: myjsonResponse['userid'],
      id: myjsonResponse['id'],
      title: myjsonResponse['title'],
      completed: myjsonResponse['completed'],
    );
  }
}
