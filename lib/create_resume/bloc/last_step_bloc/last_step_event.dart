import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:niu_job/models/resume.dart';

abstract class LastStepEvent extends Equatable {

  @override
  List<Object> get props => [];
}

class StartUpload extends LastStepEvent {
  final Resume resume;
  StartUpload({@required this.resume});
}