import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:niu_job/candicate/create_resume/bloc/last_step_bloc/last_step_event.dart';
import 'package:niu_job/candicate/create_resume/bloc/last_step_bloc/last_step_state.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/resources/strings.dart';
import 'package:niu_job/models/jobseeker.dart';

class LastStepBloc extends Bloc<LastStepEvent, LastStepState> {
  @override
  LastStepState get initialState => UploadingResumeState();

  @override
  Stream<LastStepState> mapEventToState(LastStepEvent event) async* {
    try {
      if (event is StartUpload) {
        await createJobSeeker(event.user);
        await createResume(event.resume, event.user);
        yield UploadedResumeState();
      }
    } catch (e) {
      throw e;
    }
  }
  
  Future<void> createJobSeeker(FirebaseUser user) async {
    try {
      await http.post(Strings.BASE_URL + "/jobseeker/",
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(
          JobSeeker(
            email: user.email,
            name: user.displayName,
            avatar: user.photoUrl,
            phone: user.phoneNumber,
            uid: user.uid
          )
        )
      );
    } catch (e) {
      
    }
  }

  Future<void> createResume(Resume resume, FirebaseUser user) async {
    try {
      await http.post(Strings.BASE_URL + "/jobseeker/resume/${user.uid}",
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(resume.toJson()));
    } catch (e) {
      throw e;
    }
  }
}
