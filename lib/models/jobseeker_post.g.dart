// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobseeker_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobSeekerPost _$JobSeekerPostFromJson(Map<String, dynamic> json) {
  return JobSeekerPost(
    jobSeekerId: json['jobSeekerId'] as String,
    positions: (json['positions'] as List)?.map((e) => e as String)?.toList(),
    programmingLanguages: (json['programmingLanguages'] as List)
        ?.map((e) => e == null
            ? null
            : ProgrammingLanguage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    languages: (json['languages'] as List)
        ?.map((e) => e == null
            ? null
            : LanguageSkill.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    workTypes: (json['workTypes'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$JobSeekerPostToJson(JobSeekerPost instance) =>
    <String, dynamic>{
      'jobSeekerId': instance.jobSeekerId,
      'positions': instance.positions,
      'programmingLanguages':
          instance.programmingLanguages?.map((e) => e?.toJson())?.toList(),
      'languages': instance.languages?.map((e) => e?.toJson())?.toList(),
      'workTypes': instance.workTypes,
    };
