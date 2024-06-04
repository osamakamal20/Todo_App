import 'package:flutter/material.dart';
import 'package:provider_state/models/tasks_models.dart';

class SaveTasks extends ChangeNotifier {
  List<Tasks> tasks = [
    Tasks(title: "Back-End Internship", isFinished: true),
    Tasks(title: "Chatbot Development Internship", isFinished: false),
    Tasks(title: "Cloud Computing Internship", isFinished: false),
    Tasks(title: "Cyber Security Internship", isFinished: false),
    Tasks(title: "DevOps Internship", isFinished: false),
    Tasks(title: "Digital Marketing Internship", isFinished: false),
    Tasks(title: "Front-End Internship", isFinished: true),
    Tasks(title: "Graphic Designing Internship", isFinished: false),
    Tasks(title: "Mobile App Internship", isFinished: true),
    Tasks(title: "Technical Writing Internship", isFinished: false),
    Tasks(title: "Video Editing Internship", isFinished: false),
  ];

  List<Tasks> get task => tasks;

  void addTask(Tasks task) {
    tasks.add(task);
    notifyListeners();
  }

  void removeTask(Tasks task) {
    tasks.remove(task);
    notifyListeners();
  }

  void checkTask(int index) {
    tasks[index].isCompleted();
    notifyListeners();
  }
}
