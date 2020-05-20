import 'package:json_annotation/json_annotation.dart';

part 'jobseeker.g.dart';

@JsonSerializable()
class JobSeeker {
  String uid;
  String avatar;
  String name;
  String phone;
  String email;

  JobSeeker(this.uid, this.avatar, this.name, this.phone, this.email);

  factory JobSeeker.fromJson(Map<String, dynamic> json) => _$JobSeekerFromJson(json);

  Map<String, dynamic> toJson() => _$JobSeekerToJson(this);
}