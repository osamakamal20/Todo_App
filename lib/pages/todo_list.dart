import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/models/save_tasks.dart';
import 'package:provider_state/pages/add_todo.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODO LISTS'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddTodo(),
            ),
          );
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Consumer<SaveTasks>(builder: (context, task, child) {
        return FadeInLeft(
          delay: Duration(milliseconds: 4000),
          child: ListView.builder(
            itemCount: task.tasks.length,
            itemBuilder: (BuildContext context, index) {
              return ListTile(
                title: Text(
                  task.tasks[index].title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    decoration: task.tasks[index].isFinished
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
                    decorationColor: task.tasks[index].isFinished
                        ? Colors.red
                        : Colors.transparent,
                    decorationThickness: 2,
                  ),
                ),
                trailing: Wrap(
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      value: task.tasks[index].isFinished,
                      onChanged: (_) {
                        context.read<SaveTasks>().checkTask(index);
                      },
                    ),
                    IconButton(
                      onPressed: () {
                        context.read<SaveTasks>().removeTask(
                              task.tasks[index],
                            );
                      },
                      icon: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
