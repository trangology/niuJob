// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobseeker.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSeeker _$JobSeekerFromJson(Map<String, dynamic> json) {
  return JobSeeker(
    json['uid'] as String,
    json['avatar'] as String,
    json['name'] as String,
    json['phone'] as String,
    json['email'] as String,
  );
}

Map<String, dynamic> _$JobSeekerToJson(JobSeeker instance) => <String, dynamic>{
      'uid': instance.uid,
      'avatar': instance.avatar,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
    };
