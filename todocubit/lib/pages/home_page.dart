import 'package:flutter/material.dart';
import 'package:todocubit/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/addtaskpage');
        },
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Task(title: 'Hello', description: 'I want to play some game'),
              Task(
                title: 'Hi',
                description: 'Witam bardzo serdecznie',
              ),
              Task(title: 'Hello', description: 'I want to play some game'),
              Task(title: 'Hello', description: 'I want to play some game'),
              Task(title: 'Hello', description: 'I want to play some game'),
              Task(title: 'Hello', description: 'I want to play some game'),
            ],
          ),
        ],
      ),
    );
  }
}
