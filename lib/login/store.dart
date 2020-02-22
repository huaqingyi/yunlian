import 'package:groovin_material_icons/groovin_material_icons.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yunlian/login/service.dart';

import 'dao.dart';

part 'store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  LoginFormData loginFormData;

  @observable
  bool showLoginPassword;

  @observable
  List loginMethod;

  @observable
  LoginService service;

  @observable
  UserInfo userInfo;

  _LoginStore() {
    showLoginPassword = true;
    loginMethod = [
      {
        "title": "facebook",
        "icon": GroovinMaterialIcons.facebook,
      },
      {
        "title": "google",
        "icon": GroovinMaterialIcons.google,
      },
      {
        "title": "twitter",
        "icon": GroovinMaterialIcons.twitter,
      },
    ];
    loginFormData = LoginFormData.fromJson({'username': '', 'password': ''});
    service = LoginService();
  }

  @action
  login() async {
    // final prefs = await SharedPreferences.getInstance();
    // final token = jsonEncode(loginFormData.toJson());
    // prefs.setString('token', token);
    // print('username' +
    //     loginFormData.username +
    //     '，password：' +
    //     loginFormData.password);

    // return {
    //   'success': true,
    // };

    final resp = await this.service.oauthLogin(loginFormData);
    if (resp.code == 0) {
      userInfo = UserInfo(
        realName: resp.data['realName'],
        userId: resp.data['userId'],
        token: resp.data['token'],
      );
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', userInfo.token);
    }
    return resp;
  }
}
