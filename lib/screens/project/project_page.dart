import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/palette.dart';
import 'package:flutter_app_resume/config/platform.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_resume/screens/project/project_cubit.dart';
import 'package:flutter_app_resume/model/RecentWork.dart';
import 'package:flutter_app_resume/screens/project/portfolio.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class ProjectPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ProjectPage());
  }

  @override
  Widget build(BuildContext context) {
    PlatFormCheck dimension = PlatFormCheck.of(context);

    return BlocProvider(
        create: (_) =>
            ProjectCubit(repository: context.read<Repository>())..getProjects(),
        child: BlocBuilder<ProjectCubit, ProjectState>(
          buildWhen: (pState, nState) => pState != nState,
          builder: (context, state) {
            return CustomScrollView(
              controller: ScrollController(),
              slivers: [
                SliverToBoxAdapter(
                    child: Container(
                        margin: EdgeInsets.only(
                            top: dimension.screenSize.width * 0.07,
                            bottom: dimension.screenSize.width * 0.03),
                        child: Container(
                          alignment: Alignment.topCenter,
                          width: double.infinity,
                          child: Wrap(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "MY PORTFOLIO",
                                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                                        color: Color(0xffFAF9FB).withAlpha(200),
                                        letterSpacing: Palette.SecondaryTitleSpacing,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "RECENT WORKS",
                                    style: Theme.of(context).textTheme.headline5.copyWith(
                                        color: Color(0xffFAF9FB),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ))),
                SliverPadding(
                  padding: EdgeInsets.only(
                    top: dimension.screenSize.height * 0.04,
                  ),
                  sliver: SliverStaggeredGrid.count(
                    crossAxisCount: 5,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: <Widget>[
                      MouseRegion(
                        child: BodyWidget(recentWork: recentWorks[0],platFormCheck:dimension),
                      ),
                      BodyWidget(recentWork: recentWorks[1],platFormCheck:dimension),
                      BodyWidget(recentWork: recentWorks[2],platFormCheck:dimension),
                      BodyWidget(recentWork: recentWorks[4],platFormCheck:dimension),
                      BodyWidget(recentWork: recentWorks[3],platFormCheck:dimension),
                      BodyWidget(recentWork: recentWorks[5],platFormCheck:dimension),
                    ],
                    staggeredTiles: <StaggeredTile>[
                      StaggeredTile.extent(3, dimension.screenSize.width * 0.7),
                      StaggeredTile.extent(2, dimension.screenSize.width * 0.7),
                      StaggeredTile.extent(5, dimension.screenSize.width * 0.5),
                      StaggeredTile.extent(3, dimension.screenSize.width * 0.7),
                      StaggeredTile.extent(2, dimension.screenSize.width * 0.7),
                      StaggeredTile.extent(5, dimension.screenSize.width * 0.5),
                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }
}
