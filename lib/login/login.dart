import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fpyi/fpyi.dart';
import 'package:yunlian/layout/store.dart';
import 'package:yunlian/login/store.dart';

final store = LoginStore();

class Login extends PYIComponent {
  final GlobalKey<FormState> loginForm = GlobalKey<FormState>();

  @override
  Widget render(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) => Form(
          key: loginForm,
          //开启自动校验
          autovalidate: true,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 22.0),
            children: <Widget>[
              SizedBox(
                height: kToolbarHeight,
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '登录',
                  style: TextStyle(fontSize: 42.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 12.0, top: 4.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    color: Colors.black,
                    width: 40.0,
                    height: 2.0,
                  ),
                ),
              ),
              SizedBox(height: 70.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '用户名',
                ),
                validator: (String value) {
                  return value.trim().length > 3 ? null : "用户名不能小于4位 .";
                },
                onSaved: (String value) {
                  store.loginFormData.username = value;
                },
              ),
              SizedBox(height: 30.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: '密码',
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: store.showLoginPassword
                          ? Colors.grey
                          : Theme.of(context).iconTheme.color,
                    ),
                    onPressed: () {
                      store.showLoginPassword = !store.showLoginPassword;
                    },
                  ),
                ),
                obscureText: store.showLoginPassword,
                validator: (String value) {
                  return value.length < 6 ? '密码长度不够 6 位' : null;
                },
                onSaved: (String value) {
                  store.loginFormData.password = value;
                },
              ),
              SizedBox(height: 30.0),
              Align(
                child: SizedBox(
                  height: 45.0,
                  width: 270.0,
                  child: RaisedButton(
                    child: Text(
                      '登录',
                      style: Theme.of(context).primaryTextTheme.headline,
                    ),
                    color: Colors.black,
                    onPressed: () async {
                      // 读取当前 Form 状态
                      final loginFormComp = this.loginForm.currentState;
                      // 验证 Form表单
                      if (!loginFormComp.validate()) {
                        return false;
                      }
                      loginFormComp.save();
                      final resp = await store.login();

                      if (resp.code == 0) {
                        return showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('提示'),
                              content: SingleChildScrollView(
                                child: Text('登录成功 .'),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('确定'),
                                  onPressed: () async {
                                    layoutStore..setCurrent(0);
                                    await Navigator.of(context).pushNamed('/');
                                  },
                                )
                              ],
                            );
                          },
                        );
                      } else {
                        return showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('提示'),
                              content: SingleChildScrollView(
                                child: Text(resp.message),
                              ),
                              actions: <Widget>[
                                FlatButton(
                                  child: Text('确定'),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                )
                              ],
                            );
                          },
                        );
                      }
                    },
                    shape: StadiumBorder(side: BorderSide()),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Align(
                alignment: Alignment.center,
                child: Text(
                  '其他账号登录',
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: store.loginMethod
                    .map(
                      (item) => Builder(
                        builder: (context) {
                          return IconButton(
                              icon: Icon(item['icon'],
                                  color: Theme.of(context).iconTheme.color),
                              onPressed: () {
                                // TODO : 第三方登录方法
                                Scaffold.of(context).showSnackBar(new SnackBar(
                                  content: new Text("${item['title']}登录"),
                                  action: new SnackBarAction(
                                    label: "取消",
                                    onPressed: () {},
                                  ),
                                ));
                              });
                        },
                      ),
                    )
                    .toList(),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('没有账号？'),
                      GestureDetector(
                        child: Text(
                          '点击注册',
                          style: TextStyle(color: Colors.green),
                        ),
                        onTap: () {
                          // TODO 跳转到注册页面
                          print('去注册');
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //内容改变的回调
          onChanged: () {
            print("onChanged");
          },
        ),
      ),
    );
  }
}
