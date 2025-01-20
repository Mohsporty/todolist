import 'package:flutter/material.dart';

// ignore: camel_case_types
class tasks_list extends StatelessWidget {
  const tasks_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Go To Shop'),
      trailing: TaskCheckBox(),
    );
  }
}

class TaskCheckBox extends StatefulWidget {
  @override
  State<TaskCheckBox> createState() => _TaskCheckBoxState();
}

class _TaskCheckBoxState extends State<TaskCheckBox> {
  bool? iSchecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.deepOrangeAccent,
      value: iSchecked,
      onChanged: (newValue) {
        setState(() {
          iSchecked = newValue;
        });
      },
    );
  }
}
