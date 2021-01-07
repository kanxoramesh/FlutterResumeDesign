import 'package:bloc/bloc.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:meta/meta.dart';

part 'container_state.dart';

class ContainerCubit extends Cubit<ContainerState> {
  ContainerCubit(this.repository) : super(ContainerInitial());
  final Repository repository;

  pageTapped(int index) {
    emit(state.copyWith(index: index));

  }

  handleDrawer(bool collapseState){

    emit(state.copyWith(isCollapsed: collapseState));

  }

}
