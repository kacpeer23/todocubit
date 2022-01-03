import 'package:flutter/material.dart';
import 'package:todocubit/presentation/pages/add_task_page/addtask_page.dart';
import 'package:todocubit/presentation/pages/details_page/details_page.dart';
import 'package:todocubit/presentation/pages/home_page/home_page.dart';
import 'package:todocubit/task_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        "/detailspage": (BuildContext context) => DetailsPage(),
        "/homepage": (BuildContext context) => HomePage(),
        "/addtaskpage": (BuildContext context) => AddtaskPage(),
      },
      home: HomePage(),
    );
  }
}
