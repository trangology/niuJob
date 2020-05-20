import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:niu_job/create_resume/bloc/last_step_bloc/last_step_event.dart';
import 'package:niu_job/create_resume/bloc/last_step_bloc/last_step_state.dart';

class LastStepBloc extends Bloc<LastStepEvent, LastStepState> {
  @override
  LastStepState get initialState => UploadingResumeState();

  @override
  Stream<LastStepState> mapEventToState(LastStepEvent event) async* {
    try {
      if (event is StartUpload) {
        print(event.resume);
        yield UploadedResumeState();
      }
    } catch (e) {
      throw e;
    }
  }
}