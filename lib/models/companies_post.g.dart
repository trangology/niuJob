// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompaniesPost _$CompaniesPostFromJson(Map<String, dynamic> json) {
  return CompaniesPost(
    companyId: json['companyId'] as String,
    positions: (json['positions'] as List)?.map((e) => e as String)?.toList(),
    description: json['description'] as String,
    salary: json['salary'] == null
        ? null
        : Salary.fromJson(json['salary'] as Map<String, dynamic>),
    salaryType: json['salaryType'],
    languages: (json['languages'] as List)?.map((e) => e as String)?.toList(),
    workTypes: (json['workTypes'] as List)?.map((e) => e as String)?.toList(),
    time: json['time'] == null
        ? null
        : Time.fromJson(json['time'] as Map<String, dynamic>),
    isExpired: json['isExpired'] as bool,
  );
}

Map<String, dynamic> _$CompaniesPostToJson(CompaniesPost instance) =>
    <String, dynamic>{
      'companyId': instance.companyId,
      'positions': instance.positions,
      'description': instance.description,
      'salary': instance.salary?.toJson(),
      'salaryType': instance.salaryType,
      'languages': instance.languages,
      'workTypes': instance.workTypes,
      'time': instance.time?.toJson(),
      'isExpired': instance.isExpired,
    };
