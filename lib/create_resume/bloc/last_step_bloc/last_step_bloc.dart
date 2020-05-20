import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:niu_job/create_resume/bloc/last_step_bloc/last_step_event.dart';
import 'package:niu_job/create_resume/bloc/last_step_bloc/last_step_state.dart';
import 'package:niu_job/models/resume.dart';
import 'package:niu_job/resources/strings.dart';

class LastStepBloc extends Bloc<LastStepEvent, LastStepState> {
  @override
  LastStepState get initialState => UploadingResumeState();

  @override
  Stream<LastStepState> mapEventToState(LastStepEvent event) async* {
    try {
      if (event is StartUpload) {
        await createResume(event.resume, event.userId);
        yield UploadedResumeState();
      }
    } catch (e) {
      throw e;
    }
  }

  Future<void> createResume(Resume resume, String uid) async {
    try {
      await http.post(Strings.BASE_URL + "/jobseeker/resume/$uid",
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(resume));
    } catch (e) {
      throw e;
    }
  }
}
