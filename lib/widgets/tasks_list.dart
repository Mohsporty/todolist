import 'package:flutter/material.dart';

class tasks_list extends StatelessWidget {
  const tasks_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Go To Shop'),
      trailing: Checkbox(value: false, onChanged: null),
    );
  }
}
