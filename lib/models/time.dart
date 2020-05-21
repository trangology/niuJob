import 'package:json_annotation/json_annotation.dart';
part 'time.g.dart';
@JsonSerializable(explicitToJson: true)
class Time {
  String from;
  String to;

  Time({this.from, this.to});

  factory Time.fromJson(Map<String, dynamic> json) => _$TimeFromJson(json);

  Map<String, dynamic> toJson() => _$TimeToJson(this);
}