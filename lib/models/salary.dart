import 'package:json_annotation/json_annotation.dart';
part 'salary.g.dart';
@JsonSerializable()
class Salary {
  String from;
  String to;

  Salary(this.from, this.to);

  factory Salary.fromJson(Map<String, dynamic> json) => _$SalaryFromJson(json);

  Map<String, dynamic> toJson() => _$SalaryToJson(this);
}