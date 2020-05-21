import 'package:json_annotation/json_annotation.dart';
import 'package:niu_job/models/profile.dart';

part 'companies.g.dart';

@JsonSerializable(explicitToJson: true)
class Company {
  String uid;
  String posterPhone;
  Profile profile;

  Company({this.uid, this.posterPhone, this.profile});

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}