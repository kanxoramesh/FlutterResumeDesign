import 'package:bloc/bloc.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:meta/meta.dart';

part 'project_state.dart';

class ProjectCubit extends Cubit<ProjectState> {
  ProjectCubit({this.repository}) : super(ProjectInitial());
  final Repository repository;
  int _a = 10;

  int get data => _a;

  getProjects() {}

}
