// import 'package:flutter/material.dart';
// import '../models/task.dart';

// class TaskProvider with ChangeNotifier{
//   final List<Task> _tasks =[];
//   List<Task> get tasks =>_tasks;

//   void addTask(String title ){
//     _tasks.add(Task(id: DateTime.now().toString(),title: title));
//     notifyListeners();
//   }

//   void toggleTask(String id){
//     final task =_tasks.firstWhere((task)=>task.id==id);
//     task.isCompleted=!task.isCompleted;
//     notifyListeners();
//   }
  
//   void deleteTask(String id) {
//     _tasks.removeWhere((task) => task.id == id);
//     notifyListeners();
//   }

// }


import 'package:get/get.dart';
import '../models/task.dart';

class TaskController extends GetxController {
  var tasks = <Task>[].obs;

  void addTask(String title) {
    tasks.add(Task(id: DateTime.now().toString(), title: title));
  }

  void toggleTask(String id) {
    final task = tasks.firstWhere((task) => task.id == id);
    task.isCompleted = !task.isCompleted;
    tasks.refresh();
  }

  void deleteTask(String id) {
    tasks.removeWhere((task) => task.id == id);
  }
}
