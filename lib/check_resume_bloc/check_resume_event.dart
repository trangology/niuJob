import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CheckResumeEvent extends Equatable {

  @override
  List<Object> get props => [];
}
 class FetchUserResume extends CheckResumeEvent {
   final String userId;

   FetchUserResume({@required this.userId});
 }