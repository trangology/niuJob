import 'package:json_annotation/json_annotation.dart';

import 'salary.dart';
import 'time.dart';

part 'companies_post.g.dart';

@JsonSerializable(explicitToJson: true)
class CompaniesPost {
  String companyId;
  List<String> positions;
  String description;
  Salary salary;
  Object salaryType;
  List<String> languages;
  List<String> workTypes;
  Time time;
  bool isExpired;

  CompaniesPost({
      this.companyId,
      this.positions,
      this.description,
      this.salary,
      this.salaryType,
      this.languages,
      this.workTypes,
      this.time,
      this.isExpired});

  factory CompaniesPost.fromJson(Map<String, dynamic> json) => _$CompaniesPostFromJson(json);

  Map<String, dynamic> toJson() => _$CompaniesPostToJson(this);
}