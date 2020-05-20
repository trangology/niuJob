// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Time _$TimeFromJson(Map<String, dynamic> json) {
  return Time(
    from: json['from'] as String,
    to: json['to'] as String,
  );
}

Map<String, dynamic> _$TimeToJson(Time instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
    };
