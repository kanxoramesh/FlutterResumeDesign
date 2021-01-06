part of 'home_cubit.dart';


class HomeState extends Equatable {

final User user;

  HomeState({this.user=null});
  @override
  List<Object> get props => [user];

}

class HomeInitial extends HomeState {}
class HomeLoading extends HomeState {}
