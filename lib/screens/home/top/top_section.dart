import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/platform.dart';
import 'package:flutter_app_resume/screens/container/container_cubit.dart';
import 'package:flutter_app_resume/screens/home/cubit/home_cubit.dart';
import 'package:flutter_app_resume/screens/home/my_inherited.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../home_page.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PlatFormCheck dimension = PlatFormCheck.of(context);
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) => previous.user != current.user,
      builder: (context, state) {
        if (state.user != null)
          return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    constraints: BoxConstraints(
                      maxHeight: dimension.topHeight,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hi, I am",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText2,
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          state.user.name,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                        ),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(state.user.designation,
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(state.user.details,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                // scrollToBottom.call();
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                40, 40))),
                                                width:
                                                    dimension.buttonSize.width,
                                                height:
                                                    dimension.buttonSize.height,
                                                child: Center(
                                                  child: Text(
                                                    "Hire Me",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2
                                                        .copyWith(
                                                            color: Color(
                                                                0xff437DF7)),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 12,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                // downloadFile(resumeLink);
                                              },
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                        color: Colors.white,
                                                        width: 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                40, 40))),
                                                width:
                                                    dimension.buttonSize.width,
                                                height:
                                                    dimension.buttonSize.height,
                                                child: Center(
                                                  child: Text(
                                                    "Get CV",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .subtitle2,
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    constraints: BoxConstraints(
                        //475/625
                        maxHeight: dimension.topHeight,
                        maxWidth: dimension.topImageMaxWidth),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(state.user.profile))),
                  ),
                ),
              ],
            ),
          );
        else
          return Container();
      },
    );
  }
}
