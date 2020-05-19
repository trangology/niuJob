import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:niu_job/create_resume/steps/step_three.dart';
import 'package:niu_job/create_resume/steps/step_two.dart';
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
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        // ignore: missing_return
        builder: (context, state) {
          if (state is Uninitialized) {
            return SplashScreen();
          }
          if (state is Unauthenticated) {
            return LoginScreen(userRepository: _userRepository);
          }
          if (state is Authenticated) {
            return StepFive();
          }
        },
      ),
    );
  }
}