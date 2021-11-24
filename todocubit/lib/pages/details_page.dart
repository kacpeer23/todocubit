import 'package:flutter/material.dart';
import 'package:todocubit/task.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  // final String? taskTitle;

  // _DetailsPageState(this.taskTitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('1'),
          ],
        ),

        // centerTitle: true,
      ),
    );
  }
}
