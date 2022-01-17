import 'dart:math';

// import 'package:todocubit/data/models/task.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todocubit/api/firebase_api.dart';
import 'package:todocubit/task_widget.dart';

class TaskProvider {
  Future<List<Task>> getTasks() async {
    FirebaseFirestore.instance
        .collection('tasks')
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((task1) {
        print(task1["first_name"]);
      });
    });

    await Future.delayed(Duration(seconds: 1));
    return _taskList;
  }

  Future<void> addTask(
      {required String title, required String description}) async {
    await Future.delayed(Duration(seconds: 1));
    _taskList.add(Task(
        title: title,
        description: description,
        id: Random().nextInt(100000000)));
  }

  Future<Task> getTask(id) async {
    await Future.delayed(Duration(seconds: 1));
    final task = _taskList.firstWhere((element) => element.id == id);
    return task;
  }

  final List<Task> _taskList = [
    // to musi być w local storage
    Task(
      description: 'Hello i want to play football',
      title: 'Kacper',
      id: 1,
    ),
    Task(
      description:
          'alf,dslgamsdlkgmsadlkgmaksldgalsdgasdgudsghiasuodfsdaljfnasdkjlfnsdjfasn lnbljdsanbljsdanbljasduydsafuhsdfnsdmfn sadfm.sdnfasdfjalsdfnhsdjfnasldglasjdgnsdaljgnsaldjgnasldjgnasdljgnasl',
      title: 'Jakub',
      id: 2,
    ),
    Task(
      description: 'Hello i want to play LOL',
      title: 'Mateusz',
      id: 3,
    ),
    Task(
      description: 'Hello i want to play tennis',
      title: 'Mati',
      id: 4,
    ),
    Task(
      description: 'abcdeefghj ',
      title: 'Seba',
      id: 5,
    ),
  ];
}
