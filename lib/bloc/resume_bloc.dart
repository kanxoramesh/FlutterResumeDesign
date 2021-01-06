import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app_resume/repository/Repository.dart';

class ResumeBloc extends Bloc<ResumeEvent,ResumeState>{
  ResumeBloc({@required this.repository}): super(const ResumeState.initial()){
    add(ResumeEventNavigation(status: NavigationStatus.HOME));
  }

  final Repository repository;
  @override
  Stream<ResumeState> mapEventToState(ResumeEvent event) async* {

    if(event is ResumeEventNavigation){
      yield ResumeState(status:  event.status);
    }

  }

}


abstract class ResumeEvent extends Equatable {
  const ResumeEvent();

  @override
  List<Object> get props => [];
}

class ResumeEventNavigation extends ResumeEvent{
  final NavigationStatus status;
  ResumeEventNavigation({this.status});

  @override
  List<Object> get props => [status];
}





enum NavigationStatus { HOME, PROJECTS, CONTACTS }

class ResumeState extends Equatable{
  final NavigationStatus status;

  const ResumeState({this.status=NavigationStatus.HOME});

  const ResumeState.initial():this();

  @override
  List<Object> get props => [status];


}