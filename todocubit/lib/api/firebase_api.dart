import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseApi {
  final CollectionReference taskCollection =
      FirebaseFirestore.instance.collection('tasks');
}
