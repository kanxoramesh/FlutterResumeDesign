import 'package:flutter/material.dart';

class MyInherited extends InheritedWidget {
  MyInherited({this.controller, Widget child}):super(child: child);

  final AnimationController controller;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return true;
  }
  static MyInherited of(BuildContext context)=> context.dependOnInheritedWidgetOfExactType<MyInherited>();
}
