import 'package:flutter/material.dart';

class AddTaskSecreen extends StatelessWidget {
  const AddTaskSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // desghin in add task page
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            'Add Task',
            style: TextStyle(
                fontSize: 30,
                color: const Color.fromARGB(255, 38, 232, 8),
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 13, 12, 12),
              backgroundColor: Colors.amber,
            ),
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
