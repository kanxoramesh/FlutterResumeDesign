import 'package:flutter/material.dart';

class Specialization {
  final String title, detail1, dtail2;
  final String icon;

  final Color startColor, endCOlor;

  Specialization(
      {this.startColor,
      this.endCOlor,
      this.icon,
      this.title,
      this.detail1,
      this.dtail2});
}

List<Specialization> specializations = [
  Specialization(
      startColor: Color(0xffd9fffc),
      endCOlor: Color(0xffd9fffc),
      title: "Android Development",
      detail1: "Native Android, Beautiful design, Better performance",
      dtail2: "Java,Dart,C++",
      icon: "images/android.png"),
  Specialization(
      startColor: Color(0xffd9fffc),
      endCOlor: Color(0xffd9fffc),
      title: "IOS Development",
      detail1: "Native IOS ",
      dtail2: "Swift,Objective C",
      icon: "images/ios.png"),
       Specialization(
      startColor: Color(0xffd9fffc),
      endCOlor: Color(0xffd9fffc),
      title: "FLutter Development",
      detail1: "Cross Platform Application IOS/Android ",
      dtail2: "Flutter dart",
      icon:"images/flutter.png"),
      Specialization(
      startColor: Color(0xffd9fffc),
      endCOlor: Color(0xffd9fffc),
      title: "UI/UX",
      detail1: "User Flow, Wireframing",
      dtail2: "Protyping, Mobile App Design ",
      icon: "images/ui.png"),
];
