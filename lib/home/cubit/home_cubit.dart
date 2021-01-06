import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_app_resume/model/user.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({this.repository}) : super(HomeInitial());
  final Repository repository;

  getUserInformation() async{
    emit(HomeLoading());
    User user=await repository.getUser();
    emit(HomeState(user: user));


  }
}
