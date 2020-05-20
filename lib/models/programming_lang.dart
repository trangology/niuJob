import 'package:json_annotation/json_annotation.dart';
part 'programming_lang.g.dart';
@JsonSerializable(nullable: true)
class ProgrammingLanguage {
  String name;
  String experience;

  ProgrammingLanguage({this.name, this.experience});

  factory ProgrammingLanguage.fromJson(Map<String, dynamic> json) => _$ProgrammingLanguageFromJson(json);

  Map<String, dynamic> toJson() => _$ProgrammingLanguageToJson(this);
}