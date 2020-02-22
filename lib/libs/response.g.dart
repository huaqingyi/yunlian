// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PYIResponse _$PYIResponseFromJson(Map<String, dynamic> json) {
  return PYIResponse(
    code: json['code'] as int,
    message: json['message'] as String,
    data: json['data'],
  );
}

Map<String, dynamic> _$PYIResponseToJson(PYIResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
