import 'package:json_annotation/json_annotation.dart';

part 'education.g.dart';

@JsonSerializable(explicitToJson: true)
class Education {
  String schoolName;
  String degree;
  String startDate;
  String endDate;

  Education({this.schoolName, this.degree, this.startDate, this.endDate});

  factory Education.fromJson(Map<String, dynamic> json) => _$EducationFromJson(json);

  Map<String, dynamic> toJson() => _$EducationToJson(this);

}