// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginFormData _$LoginFormDataFromJson(Map<String, dynamic> json) {
  return LoginFormData(
    username: json['username'] as String,
    password: json['password'] as String,
  );
}

Map<String, dynamic> _$LoginFormDataToJson(LoginFormData instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
