import 'package:json_annotation/json_annotation.dart';
part 'profile.g.dart';
@JsonSerializable()
class Profile {
  String avatar;
  String name;
  String email;
  String phone;
  String address;

  Profile({this.avatar, this.name, this.email, this.phone, this.address});

  factory Profile.fromJson(Map<String, dynamic> json) => _$ProfileFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}