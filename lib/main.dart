import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/models/save_tasks.dart';
import 'package:provider_state/pages/todo_list.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => SaveTasks(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        useMaterial3: true,
      ),
      home: TodoList(),
    );
  }
}
