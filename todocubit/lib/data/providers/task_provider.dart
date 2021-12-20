import 'dart:math';

import 'package:todocubit/data/models/task.dart';

class TaskProvider {
  Future<List<Task>> getTasks() async {
    // to musi pobierać z local storage
    await Future.delayed(Duration(seconds: 1));
    return _taskList;
  }

  Future<void> addTask(
      // to musi dodawać do logal storage
      {required String title,
      required String description}) async {
    await Future.delayed(Duration(seconds: 1));
    _taskList.add(Task(
        title: title,
        description: description,
        id: Random().nextInt(100000000)));
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
          'Hello i want to play csgo lal,fdsalf,dslgamsdlkgmsadlkgmaksldgalsdgasdgudsghiasuodfsdaljfnasdkjlfnsdjfasn lnbljdsanbljsdanbljasduydsafuhsdfnsdmfn sadfm.sdnfasdfjalsdfnhsdjfnasldglasjdgnsdaljgnsaldjgnasldjgnasdljgnasl',
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
      description: 'Hello i want to fff ',
      title: 'Seba',
      id: 5,
    ),
  ];
}
