class Tasks {
  final String title;
  bool isFinished;

  Tasks({required this.title, required this.isFinished});

  void isCompleted() {
    isFinished = !isFinished;
  }
}
