import 'package:flutter/material.dart';
import 'package:todocubit/pages/addtask_page.dart';
import 'package:todocubit/pages/details_page.dart';
import 'package:todocubit/pages/home_page.dart';

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
