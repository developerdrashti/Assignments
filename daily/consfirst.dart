import 'dart:io';

class student {
  int? id;
  String? name;
  student(int id, String name) {
    this.id = id;
    this.name = name;
  }
  void display() {
    print("id=$id");
    print("name=$name");
  }
}

void main() {
  var obj = new student(1, "drashti");
  obj.display();
}
