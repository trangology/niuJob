// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Company _$CompanyFromJson(Map<String, dynamic> json) {
  return Company(
    uid: json['uid'] as String,
    posterPhone: json['posterPhone'] as String,
    profile: json['profile'] == null
        ? null
        : Profile.fromJson(json['profile'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CompanyToJson(Company instance) => <String, dynamic>{
      'uid': instance.uid,
      'posterPhone': instance.posterPhone,
      'profile': instance.profile?.toJson(),
    };
