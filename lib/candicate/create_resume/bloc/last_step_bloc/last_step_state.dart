import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/resume.dart';

abstract class LastStepState extends Equatable {

  @override
  List<Object> get props => [];
}

class UploadingResumeState extends LastStepState {
}

class UploadedResumeState extends LastStepState {

}
class UploadErrorResumeState extends LastStepState {}