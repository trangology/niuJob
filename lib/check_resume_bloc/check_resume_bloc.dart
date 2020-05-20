import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:niu_job/check_resume_bloc/check_resume_event.dart';
import 'package:niu_job/check_resume_bloc/check_resume_state.dart';

class CheckResumeBloc extends Bloc<CheckResumeEvent, CheckResumeState> {
  @override
  CheckResumeState get initialState => ResumeCheckUninitialized();

  @override
  Stream<CheckResumeState> mapEventToState(CheckResumeEvent event) async* {
    if (event is FetchUserResume) {
      yield ResumeCheckSuccess(
          hasCreatedResume: await userHasResume(event.userId));
    }
  }

  Future<bool> userHasResume(String id) async {
    var headers = {'userId': id};
    bool hasResume = jsonDecode((await http.get(
            'http://7924beac.ngrok.io/jobseeker/resume/hasResume',
            headers: headers))
        .body)['hasResume'];

    return hasResume;
  }
}
