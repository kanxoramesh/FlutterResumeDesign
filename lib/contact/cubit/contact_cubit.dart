import 'package:bloc/bloc.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:meta/meta.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit({this.repository}) : super(ContactInitial());
  final Repository repository;

}
