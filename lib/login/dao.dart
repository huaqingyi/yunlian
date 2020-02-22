import 'package:json_annotation/json_annotation.dart';

part 'dao.g.dart';

@JsonSerializable()
class LoginFormData {
  String username;
  String password;

  LoginFormData({this.username, this.password});

  factory LoginFormData.fromJson(Map<String, dynamic> json) =>
      _$LoginFormDataFromJson(json);

  Map<String, dynamic> toJson() => _$LoginFormDataToJson(this);
}
