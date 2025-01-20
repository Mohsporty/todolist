import 'package:flutter/material.dart';
import 'package:todolist/Screens/add_task_secreen.dart';
import 'package:todolist/widgets/task_list_main.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // actions button for add somthing on it use model bottom sheet
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) => SingleChildScrollView(
                child: Container(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: AddTaskSecreen())),
          );
        },
        backgroundColor: const Color.fromARGB(255, 134, 79, 236),
        child: Icon(Icons.add),
      ),
      // page backgound color
      backgroundColor: Colors.blue[100],
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
          bottom: 80,
        ),
        // this is icone of to do list in upp also the informations for him
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.playlist_add_check, size: 40, color: Colors.red),
                SizedBox(width: 20),
                Text(
                  "Todo list",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 46, 42, 42),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            Text(
              "XXX",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            // this is backround Color for text and all informations for him
            Expanded(
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                // this code for tyape any thing in the list to whit page and has baby wight for list to esaly fixed code
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
