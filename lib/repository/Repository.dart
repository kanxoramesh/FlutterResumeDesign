import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_resume/model/user.dart';

class Repository {
  Repository({
    FirebaseFirestore firebaseFirestore,
  }) : firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;
  final FirebaseFirestore firebaseFirestore;

  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 10));
    return User(name: "Ramesh Pokhrel", details: "Details",cv:"",designation: "Android developer",profile: "jdj");
  }
}
