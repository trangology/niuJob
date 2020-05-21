// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobseeker_liked.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSeekerLiked _$JobSeekerLikedFromJson(Map<String, dynamic> json) {
  return JobSeekerLiked(
    jobSeekerId: json['jobSeekerId'] as String,
    post: json['post'] == null
        ? null
        : JobSeekerPost.fromJson(json['post'] as Map<String, dynamic>),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$JobSeekerLikedToJson(JobSeekerLiked instance) =>
    <String, dynamic>{
      'jobSeekerId': instance.jobSeekerId,
      'post': instance.post?.toJson(),
      'date': instance.date?.toIso8601String(),
    };
