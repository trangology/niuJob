import 'package:json_annotation/json_annotation.dart';
part 'language_skill.g.dart';
@JsonSerializable(explicitToJson: true)
class LanguageSkill {
  final String language;
  final String level;

  const LanguageSkill({this.language, this.level});

  factory LanguageSkill.fromJson(Map<String, dynamic> json) => _$LanguageSkillFromJson(json);

  Map<String, dynamic> toJson() => _$LanguageSkillToJson(this);
}