import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final String description;
  final int id;
  TaskWidget(
      {required this.title, required this.description, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detailspage', arguments: id);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          vertical: 32.0,
          horizontal: 32.0,
        ),
        margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7349FE), Colors.green],
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 2.0),
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.lato(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 10.0,
              ),
            ),
            Text(
              description,
              style: GoogleFonts.lato(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Task {
  final String description;
  final String title;
  final int id;
  Task({required this.title, required this.description, required this.id});
}
