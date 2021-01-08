import 'package:flutter/material.dart';
import 'package:flutter_app_resume/home/cubit/home_cubit.dart';
import 'package:flutter_app_resume/home/specialization/special_skills.dart';
import 'package:flutter_app_resume/home/specialization/specialization.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'file:///D:/Ramesh/FlutterResume/flutter_app_resume/lib/home/top/top_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (_) => HomeCubit(repository: context.read<Repository>())
        ..getUserInformation(),
      child: CustomScrollView(
        controller: ScrollController(),
        slivers: [
          SliverToBoxAdapter(
            child: TopSection(),
          ),
          SliverToBoxAdapter(child: Specialization()),
          SliverToBoxAdapter(
              child: Container(
                  margin: EdgeInsets.only(
                    top: screenSize.width * 0.01,
                  ),
                  child: SpecialSkills())),
        ],
      ),
    );
  }
}
