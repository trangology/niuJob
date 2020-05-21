import 'package:json_annotation/json_annotation.dart';
part 'tags.g.dart';
@JsonSerializable(explicitToJson: true)
class Tags {
  String name;
  String type;

  Tags({this.name, this.type});

  factory Tags.fromJson(Map<String, dynamic> json) => _$TagsFromJson(json);

  Map<String, dynamic> toJson() => _$TagsToJson(this);
}