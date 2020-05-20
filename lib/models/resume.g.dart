// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resume.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resume _$ResumeFromJson(Map<String, dynamic> json) {
  return Resume(
    fullName: json['fullName'] as String,
    email: json['email'] as String,
    github: json['github'] as String,
    skype: json['skype'] as String,
    personalWebsite: json['personalWebsite'] as String,
    description: json['description'] as String,
    education: json['education'] == null
        ? null
        : Education.fromJson(json['education'] as Map<String, dynamic>),
    workExperience: json['workExperience'] == null
        ? null
        : WorkExperience.fromJson(
            json['workExperience'] as Map<String, dynamic>),
    languageSkills: (json['languageSkills'] as List)
        ?.map((e) => e == null
            ? null
            : LanguageSkill.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    programmingLanguages: (json['programmingLanguages'] as List)
        ?.map((e) => e == null
            ? null
            : ProgrammingLanguage.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    otherSkills:
        (json['otherSkills'] as List)?.map((e) => e as String)?.toList(),
    address: json['address'] as String,
  );
}

Map<String, dynamic> _$ResumeToJson(Resume instance) => <String, dynamic>{
      'fullName': instance.fullName,
      'email': instance.email,
      'github': instance.github,
      'skype': instance.skype,
      'personalWebsite': instance.personalWebsite,
      'description': instance.description,
      'education': instance.education,
      'workExperience': instance.workExperience,
      'languageSkills': instance.languageSkills,
      'programmingLanguages': instance.programmingLanguages,
      'otherSkills': instance.otherSkills,
      'address': instance.address,
    };
