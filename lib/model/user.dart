import 'package:equatable/equatable.dart';

class User extends Equatable
{
  final String name;
  final String cv;
  final String designation;
  final String details;
  final String profile;

  User({this.name,this.designation, this.details, this.cv, this.profile});

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();

}