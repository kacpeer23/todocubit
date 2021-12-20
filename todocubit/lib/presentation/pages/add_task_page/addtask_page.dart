import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todocubit/presentation/pages/add_task_page/cubit/add_task_cubit.dart';

class AddtaskPage extends StatefulWidget {
  const AddtaskPage({Key? key}) : super(key: key);

  @override
  _AddtaskPageState createState() => _AddtaskPageState();
}

class _AddtaskPageState extends State<AddtaskPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTaskCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Add new task',
              style: GoogleFonts.roboto(fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFF7349FE),
        ),
        body: BlocConsumer<AddTaskCubit, AddTaskState>(
          listener: (context, state) {
            if (state is AddTaskSuccess) {
              Navigator.of(context).pop(true);
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                TextField(
                  controller: _titleController,
                  decoration: InputDecoration(hintText: "Write a task name"),
                  onSubmitted: (String value) {
                    print('submitted');
                  },
                ),
                TextField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                      hintText: "Write a description of the task"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF7349FE),
                  ),
                  onPressed: () => context.read<AddTaskCubit>().addTask(
                      title: _titleController.text,
                      description: _descriptionController.text),
                  child: Text('Add Task'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
