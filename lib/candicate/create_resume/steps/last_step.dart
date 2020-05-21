import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:niu_job/authentication_bloc/authentication_bloc.dart';
import 'package:niu_job/candicate/create_resume/bloc/last_step_bloc/bloc.dart';
import 'package:niu_job/home/home.dart';
import 'package:niu_job/models/resume.dart';

class LastStep extends StatelessWidget {
  final Resume resume;

  LastStep({@required this.resume});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            // ignore: missing_return
            builder: (context, stateUser) {
          if (stateUser is Authenticated) {
            return Center(
              child: BlocProvider(
                  create: (context) => LastStepBloc()
                    ..add(StartUpload(resume: resume, user: stateUser.user)),
                  child: BlocBuilder<LastStepBloc, LastStepState>(
                    // ignore: missing_return
                    builder: (context, state) {
                      if (state is UploadingResumeState) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is UploadErrorResumeState) {
                        return SnackBar(
                          content: Text("Error"),
                        );
                      }
                      if (state is UploadedResumeState) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Xin chúc mừng!!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 34),
                              ),
                              Text(
                                "Bạn đã hoàn thành xong sơ yếu lý lịch của mình.",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: OutlineButton.icon(
                                    onPressed: () {
                                      Navigator.of(context).pushAndRemoveUntil(
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Home(user: stateUser.user)),
                                          (route) => false);
                                    },
                                    icon: Icon(Icons.arrow_forward),
                                    label: Text("TỚI BẢNG ĐIỀU KHIỂN")),
                              )
                            ],
                          ),
                        );
                      }
                    },
                  )),
            );
          }
        }),
      ),
    );
  }
}
