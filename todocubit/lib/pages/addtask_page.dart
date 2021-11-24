import 'package:flutter/material.dart';

class AddtaskPage extends StatefulWidget {
  const AddtaskPage({Key? key}) : super(key: key);

  @override
  _AddtaskPageState createState() => _AddtaskPageState();
}

class _AddtaskPageState extends State<AddtaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new task'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Write a task name"),
            onSubmitted: (String value) {
              print('submitted');
            },
          ),
          TextField(
            decoration:
                InputDecoration(hintText: "Write a description of the task"),
          ),
        ],
      ),
    );
  }
}
