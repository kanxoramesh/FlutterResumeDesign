import 'package:flutter/material.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_resume/project/project_cubit.dart';

class ProjectPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return BlocProvider(
        create: (_) =>
            ProjectCubit(repository: context.read<Repository>())..getProjects(),
        child: CustomScrollView(
          controller: ScrollController(),
          slivers: [],
        ));
  }
}
