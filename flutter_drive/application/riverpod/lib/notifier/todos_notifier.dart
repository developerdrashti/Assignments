import 'package:flutter/material.dart';

import '';

class ToDoList extends StateNotifier<List<Todo>> {
  ToDoList([List<ToDo> intialstate]) : super(intialstate ?? []);
  void addTodo(String description) {
    State = [
      ...State,
    ];
  }
}
