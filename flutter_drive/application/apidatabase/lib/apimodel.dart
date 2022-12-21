import 'dart:convert';

dataModel dataModelFromJson(String str) => dataModel.fromJson(json.decode(str));
String dataModelToJson(dataModel data) => json.encode(data.tojson());

class dataModel {
  final int id;
  final String name;
  final String email;

  const dataModel({
    required this.id,
    required this.name,
    required this.email,
  });
  factory dataModel.fromJson(Map<String, dynamic> myjsonresponse) {
    return dataModel(
        id: myjsonresponse['id'],
        name: myjsonresponse['name'],
        email: myjsonresponse['email']);
  }
  Map<String, dynamic> tojson() => {
        "id": id,
        "name": name,
        "email": email,
      };
}
