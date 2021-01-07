import 'package:flutter/material.dart';
import 'package:flutter_app_resume/contact/contact_page.dart';
import 'package:flutter_app_resume/home/home_page.dart';
import 'package:flutter_app_resume/project/project_page.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'container_cubit.dart';

class ContainerPage extends StatelessWidget {
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => ContainerPage());
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return BlocProvider(
      create: (_) => ContainerCubit(context.read<Repository>()),
      child: Scaffold(
        /*floatingActionButton: Container(
          height: 65.0,
          width: 65.0,
          child: FittedBox(
            child: Container(
              margin: EdgeInsets.only(bottom: 8),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.contact_phone,
                  color: Colors.white,
                ),
                // elevation: 5.0,
              ),
            ),
          ),
        ),*/
        /*   bottomNavigationBar: BlocBuilder<ContainerCubit, ContainerState>(
            builder: (context, ContainerState state) {
          return BottomNavigationBar(
            currentIndex: state.index,
            // this will be set when a new tab is tapped
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.attach_file),
                label: 'Projects',
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.question_answer_rounded), label: 'Query')
            ],
            onTap: (index) => context.read<ContainerCubit>().pageTapped(index),
          );
        }),*/
        body: BlocBuilder<ContainerCubit, ContainerState>(
          builder: (context, ContainerState state) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorLight
                ]),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    _menuItem(context),
                    /*   Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.width * 0.06),
                        child: _getWidget(context, state)),*/
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _getWidget(context, ContainerState state) {
    if (state is ContainerHome)
      return HomePage();
    else if (state is ContainerProject)
      return ProjectPage();
    else if (state is ContainerContact)
      return ContactPage();
    else
      return HomePage();
  }

  Widget _menuItem(context) {
    var screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Container(
          margin: EdgeInsets.only(top: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              profileImage(context),
              Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    "Ramesh Pokhrel",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 4),
                  child: Text(
                    "Android Developer",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  )),
              SizedBox(
                height: screenSize.height*0.12,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height*0.05,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.attach_file,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Projects",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: screenSize.height*0.05,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.question_answer_rounded,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Query",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileImage(context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          border: Border.all(color: Colors.blueAccent, width: 2),
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage("images/profile.png")),
          borderRadius: BorderRadius.all(Radius.circular(90)),
        ),
        constraints: BoxConstraints(maxHeight: 80, maxWidth: 80));
  }
}
