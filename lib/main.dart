import 'package:equatable/equatable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_resume/bloc/resume_bloc.dart';
import 'package:flutter_app_resume/project/project_page.dart';
import 'package:flutter_app_resume/repository/Repository.dart';
import 'package:flutter_app_resume/splash/splash.dart';
import 'package:flutter_app_resume/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'container/container_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  EquatableConfig.stringify = true;
  // Bloc.observer = SimpleBlocObserver();
  runApp(MyApp(repository: Repository()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key key, @required this.repository})
      : assert(repository != null),
        super(key: key);
  final Repository repository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
        create: (context) => repository,
        child: BlocProvider(
            create: (context) => ResumeBloc(repository: repository),
            child: MyResumeApp()));
  }
}
class MyResumeApp extends StatefulWidget {

  @override
  _MyResumeAppState createState() => _MyResumeAppState();
}

class _MyResumeAppState extends State<MyResumeApp> {
  final _navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get _navigator => _navigatorKey.currentState;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: _navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: theme,
      onGenerateRoute: (_) => SplashScreen.route(),

      builder: (context,child){
        return BlocListener<ResumeBloc, ResumeState>(
          listener: (context, state) {
            switch (state.status) {
              case NavigationStatus.HOME:
                _navigator.pushAndRemoveUntil<void>(
                  ContainerPage.route(),
                      (route) => false,
                );
                break;
              case NavigationStatus.PROJECTS:
                _navigator.pushAndRemoveUntil<void>(
                  ProjectPage.route(),
                      (route) => false,
                );
                break;
              case NavigationStatus.CONTACTS:
                _navigator.pushAndRemoveUntil<void>(
                  ProjectPage.route(),
                      (route) => false,
                );
                break;
              default:
                break;
            }
          },
          child: child,
        );
      },


    );
  }
}
