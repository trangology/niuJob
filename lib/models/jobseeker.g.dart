// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobseeker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSeeker _$JobSeekerFromJson(Map<String, dynamic> json) {
  return JobSeeker(
    uid: json['uid'] as String,
    avatar: json['avatar'] as String,
    name: json['name'] as String,
    phone: json['phone'] as String,
    email: json['email'] as String,
  )..resume = json['resume'] == null
      ? null
      : Resume.fromJson(json['resume'] as Map<String, dynamic>);
}

Map<String, dynamic> _$JobSeekerToJson(JobSeeker instance) => <String, dynamic>{
      'uid': instance.uid,
      'avatar': instance.avatar,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'resume': instance.resume?.toJson(),
    };
