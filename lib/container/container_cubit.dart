import 'package:bloc/bloc.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:meta/meta.dart';

part 'container_state.dart';

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit(this.repository) : super(ContainerInitial());
  final Repository repository;

  pageTapped(int index) {
    if (index == 0) {
      emit(ContainerHome());
    } else if (index == 1) {
      emit(ContainerProject());
    } else if (index == 2) {
      emit(ContainerContact());
    } else {
      emit(ContainerHome());
    }
  }
}
