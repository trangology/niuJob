// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkExperience _$WorkExperienceFromJson(Map<String, dynamic> json) {
  return WorkExperience(
    organizationName: json['organizationName'] as String,
    position: json['position'] as String,
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$WorkExperienceToJson(WorkExperience instance) =>
    <String, dynamic>{
      'organizationName': instance.organizationName,
      'position': instance.position,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'description': instance.description,
    };
