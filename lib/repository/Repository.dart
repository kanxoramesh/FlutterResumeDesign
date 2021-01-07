import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_app_resume/model/user.dart';

class Repository {
  Repository({
    FirebaseFirestore firebaseFirestore,
  }) : firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance;
  final FirebaseFirestore firebaseFirestore;

  Future<User> getUser() async {
    return User(name: "Ramesh Pokhrel", details: "Details",cv:"",designation: "Android developer",profile: "https://firebasestorage.googleapis.com/v0/b/flutter-web-6e44b.appspot.com/o/myimg.png?alt=media&token=6344428b-57df-421b-8afe-34240d8e8ddd");
  }
}
