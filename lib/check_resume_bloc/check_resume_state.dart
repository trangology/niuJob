import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

abstract class CheckResumeState extends Equatable {

  @override
  List<Object> get props => [];
}

class ResumeCheckUninitialized extends CheckResumeState {

}

class ResumeCheckError extends CheckResumeState {}

class ResumeCheckSuccess extends CheckResumeState {
  final bool hasCreatedResume;

  ResumeCheckSuccess({@required this.hasCreatedResume});
}