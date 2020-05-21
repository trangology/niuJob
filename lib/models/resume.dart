import 'package:json_annotation/json_annotation.dart';
import 'package:niu_job/models/language_skill.dart';
import 'package:niu_job/models/programming_lang.dart';

import 'education.dart';
import 'work_experience.dart';

part 'resume.g.dart';
@JsonSerializable(explicitToJson: true)
class Resume {
  String fullName;
  String email;
  String github;
  String skype;
  String personalWebsite;
  String description;
  Education education;
  WorkExperience workExperience;
  String address;
  List<LanguageSkill> languageSkills;
  List<ProgrammingLanguage> programmingLanguages;
  List<String> otherSkills;

  Resume({
      this.fullName,
      this.email,
      this.github,
      this.skype,
      this.personalWebsite,
      this.description,
      this.education,
      this.workExperience,
      this.languageSkills,
      this.programmingLanguages,
      this.otherSkills, this.address});

  factory Resume.fromJson(Map<String, dynamic> json) => _$ResumeFromJson(json);

  Map<String, dynamic> toJson() => _$ResumeToJson(this);
}