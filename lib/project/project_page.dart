import 'package:flutter/material.dart';

class ProjectPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("This is Project page"),
    );
  }
}
