import 'dart:convert';

import 'package:yunlian/libs/response.dart';
import 'package:yunlian/libs/service.dart';
import 'package:yunlian/login/dao.dart';

class UserInfo {
  String realName;
  int userId;
  String token;
  UserInfo({this.realName, this.userId, this.token});
}

class LoginService extends PYIService {
  LoginService() : super();
  Future<PYIResponse> oauthLogin(LoginFormData data) async {
    final resp = await this.http.post(
      '/oauth/login',
      data: {
        'account': data.username,
        'passWord': data.password,
        'loginType': 1002,
        'appId': 2001,
      },
    );

    return PYIResponse.fromJson(jsonDecode(resp.toString()));
    // return LoginResponse.fromJson(resp);
  }
}
