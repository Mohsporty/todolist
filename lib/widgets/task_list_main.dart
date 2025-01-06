import 'package:flutter/material.dart';
import 'package:todolist/widgets/tasks_list.dart';

// this is for build font and task in my app
class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        tasks_list(),
        ListTile(
          title: Text('Go To Shop'),
          trailing: Checkbox(value: false, onChanged: null),
        ),
        ListTile(
          title: Text('Go To Shop'),
          trailing: Checkbox(value: false, onChanged: null),
        ),
      ],
    );
  }
}
