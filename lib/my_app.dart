import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:niu_job/check_resume_bloc/check_resume_bloc.dart';
import 'package:niu_job/check_resume_bloc/check_resume_event.dart';
import 'package:niu_job/check_resume_bloc/check_resume_state.dart';
import 'package:niu_job/create_resume/steps/start_create_resume.dart';
import 'package:niu_job/create_resume/steps/step_seven.dart';
import 'package:niu_job/create_resume/steps/step_six.dart';
import 'package:niu_job/create_resume/steps/step_three.dart';
import 'package:niu_job/create_resume/steps/step_two.dart';
import 'package:niu_job/create_resume/steps/step_zero.dart';
import 'package:niu_job/create_resume/steps/your_location.dart';
import 'package:niu_job/repositories/user_repository.dart';
import 'package:niu_job/splash/splash_screen.dart';

import 'authentication_bloc/authentication_bloc.dart';
import 'create_resume/steps/step_five.dart';
import 'create_resume/steps/step_four.dart';
import 'create_resume/steps/step_one.dart';
import 'home/home.dart';
import 'login/login_screen.dart';

class MyApp extends StatelessWidget {
  final UserRepository _userRepository;

  MyApp({Key key, @required UserRepository repository})
      : assert(repository != null),
        _userRepository = repository,
        super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        buttonTheme: ButtonThemeData(
            buttonColor: Colors.orange,
            highlightColor: Colors.orange,
            textTheme: ButtonTextTheme.primary
        ),
      ),
      home: Scaffold(
        body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          // ignore: missing_return
          builder: (context, stateUser) {
            if (stateUser is Uninitialized) {
              return SplashScreen();
            }
            if (stateUser is Unauthenticated) {
              return LoginScreen(userRepository: _userRepository);
            }
            if (stateUser is Authenticated) {
              return BlocProvider(
                create: (context) => CheckResumeBloc()..add(FetchUserResume(userId: stateUser.user.uid)),
                  child: BlocBuilder<CheckResumeBloc, CheckResumeState>(
                    // ignore: missing_return
                    builder: (context, state) {
                      if (state is ResumeCheckUninitialized) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is ResumeCheckSuccess) {
                        if (state.hasCreatedResume) {
                          return Home(user: stateUser.user);
                        } else {
                          return StepZero();
                        }
                      }
                    },
                  )
              );
            }
          },
        ),
      ),
    );
  }
}