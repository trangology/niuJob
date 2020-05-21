import 'package:json_annotation/json_annotation.dart';

import 'resume.dart';

part 'jobseeker.g.dart';

@JsonSerializable(explicitToJson: true)
class JobSeeker {
  String uid;
  String avatar;
  String name;
  String phone;
  String email;
  Resume resume;

  JobSeeker({this.uid, this.avatar, this.name, this.phone, this.email});

  factory JobSeeker.fromJson(Map<String, dynamic> json) => _$JobSeekerFromJson(json);

  Map<String, dynamic> toJson() => _$JobSeekerToJson(this);
}