import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todocubit/presentation/pages/home_page/cubit/home_cubit.dart';
import 'package:todocubit/task_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit()..getTasks(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Todo App',
            style: GoogleFonts.sourceSansPro(),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF7349FE),
        ),
        floatingActionButton: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () async {
                final result =
                    await Navigator.pushNamed(context, '/addtaskpage');
                if (result == true) {
                  context.read<HomeCubit>().getTasks();
                }
              },
              child: Icon(Icons.add),
              backgroundColor: Color(0xFFFE621D),
            );
          },
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) =>
              current is HomeStateLoading || current is HomeStateLoaded,
          builder: (context, state) {
            if (state is HomeStateLoading) {
              return CircularProgressIndicator();
            } else if (state is HomeStateLoaded) {
              return ListView.builder(
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return TaskWidget(
                    title: state.tasks[index].title,
                    description: state.tasks[index].description,
                    id: state.tasks[index].id,
                  );
                },
                itemCount: state.tasks.length,
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
