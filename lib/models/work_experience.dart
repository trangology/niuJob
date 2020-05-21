import 'package:json_annotation/json_annotation.dart';
part 'work_experience.g.dart';
@JsonSerializable(explicitToJson: true)
class WorkExperience {
  String organizationName;
  String position;
  String startDate;
  String endDate;
  String description;

  WorkExperience({this.organizationName, this.position, this.startDate,
      this.endDate, this.description});

  factory WorkExperience.fromJson(Map<String, dynamic> json) => _$WorkExperienceFromJson(json);

  Map<String, dynamic> toJson() => _$WorkExperienceToJson(this);
}