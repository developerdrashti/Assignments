import 'dart:io';

class a {
  void display() {
    print("hello class a");
  }
}

class b extends a {
  void display() {
    super.display();
    print("hello class b");
  }
}

void main() {
  var obj = new b();
  obj.display();
}
