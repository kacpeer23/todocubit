// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:todocubit/task_widget.dart';

// class DatabaseHelper {
//   Future<Database> database() async {
//     return openDatabase(
//       join(await getDatabasesPath(), 'todo.db'),
//       onCreate: (db, version) async {
//         await db.execute(
//             'CREATE TABLE tasks(id INTEGER PRIMARY KEY, title TEXT, description TEXT)');
//         await db.execute(
//             'CREATE TABLE todo(id INTEGER PRIMARY KEY, taskID INTEGER, title TEXT, isDone INTEGER)');
//       },
//       version: 1,
//     );
//   }
// }
