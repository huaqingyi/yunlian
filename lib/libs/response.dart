import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class PYIResponse {
  int code;
  String message;
  dynamic data;

  PYIResponse({this.code, this.message, this.data});

  factory PYIResponse.fromJson(Map<String, dynamic> json) =>
      _$PYIResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PYIResponseToJson(this);
}
