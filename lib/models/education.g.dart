// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Education _$EducationFromJson(Map<String, dynamic> json) {
  return Education(
    schoolName: json['schoolName'] as String,
    degree: json['degree'] as String,
    startDate: json['startDate'] as String,
    endDate: json['endDate'] as String,
  );
}

Map<String, dynamic> _$EducationToJson(Education instance) => <String, dynamic>{
      'schoolName': instance.schoolName,
      'degree': instance.degree,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
    };
