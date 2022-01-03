import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todocubit/presentation/pages/details_page/cubit/details_cubit.dart';
import 'package:todocubit/task_widget.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments as int;
    return BlocProvider(
      create: (context) => DetailsCubit()..getTask(id),
      child: BlocConsumer<DetailsCubit, DetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is DetailsLoading) {
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (state is DetailsLoaded) {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xFF7349FE),
                title: Text(state.task.title),
              ),
              body: Column(
                children: [
                  SizedBox(height: 10.0),
                  Text(
                    state.task.description,
                    style: GoogleFonts.lato(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.highlight_remove),
                onPressed: () {},
                backgroundColor: Colors.red,
              ),
            );
          } else if (state is DetailsError) {
            return Scaffold(
              body: Center(
                child: ElevatedButton(
                    onPressed: () {
                      context.read<DetailsCubit>().getTask(id);
                    },
                    child: Text('Spróbuj ponownie')),
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
