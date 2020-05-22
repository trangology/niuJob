import 'package:json_annotation/json_annotation.dart';
import 'package:niu_job/models/profile.dart';

part 'companies.g.dart';

@JsonSerializable(explicitToJson: true)
class Company {
  String uid;
  String posterPhone;
  String email;
  String address;
  String companyName;
  Profile profile;
  String findWho;
  List<String> type;
  String description;
  String requirement;
  String bonus;

  Company(
      {this.uid,
      this.posterPhone,
      this.email,
      this.address,
      this.companyName,
      this.profile,
      this.findWho,
      this.type,
      this.description,
      this.requirement,
      this.bonus});

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}