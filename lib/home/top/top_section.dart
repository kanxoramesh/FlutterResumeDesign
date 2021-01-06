import 'package:flutter/material.dart';
import 'package:flutter_app_resume/home/cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopSection extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery
        .of(context)
        .size;
    return BlocBuilder<HomeCubit, HomeState>(

      buildWhen: (previous, current) => previous.user != current.user,
      builder: (context, state) {
        if (state.user != null)
          return Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 24),
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hi, I am",
                          style: TextStyle(color: Colors.white, fontSize: 8),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          state.user.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(state.user.designation,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                            state.user.details,
                            style: TextStyle(color: Colors.white, fontSize: 8)),
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
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(40, 40))),
                                width: 80,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "Hire Me",
                                    style: TextStyle(
                                        color: Color(0xff437DF7), fontSize: 12),
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
                                    border:
                                    Border.all(color: Colors.white, width: 1),
                                    borderRadius: BorderRadius.all(
                                        Radius.elliptical(40, 40))),
                                width: 80,
                                height: 30,
                                child: Center(
                                  child: Text(
                                    "Get CV",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
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
                Expanded(
                  child: Container(),
                ),
                Container(
                  constraints: BoxConstraints(
                      maxHeight: screenSize.height * 0.45, maxWidth: 160),
                  decoration: BoxDecoration(

                      image: DecorationImage(
                        fit: BoxFit.fill,
                          image: AssetImage("images/myimg.png"))),
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
