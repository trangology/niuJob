// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Salary _$SalaryFromJson(Map<String, dynamic> json) {
  return Salary(
    json['from'] as String,
    json['to'] as String,
  );
}

Map<String, dynamic> _$SalaryToJson(Salary instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
