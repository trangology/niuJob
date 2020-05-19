import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authentication_bloc/authentication_bloc.dart';
import 'bloc_delegate/simple_bloc_delegate.dart';
import 'my_app.dart';
import 'repositories/user_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final UserRepository repository = UserRepository();
  runApp(BlocProvider(
      create: (context) =>
          AuthenticationBloc(userRepository: repository)..add(AppStarted()),
      child: MyApp(repository: repository)));
}