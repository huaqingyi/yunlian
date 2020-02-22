import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yunlian/config/http.dart';
import 'package:yunlian/libs/response.dart';

class PYIService {
  static Dio dio;

  Dio get http {
    return PYIService.dio;
  }

  PYIService() {
    if (PYIService.dio == null) {
      PYIService.dio = Dio(httpConfig);

      PYIService.dio.interceptors.add(
        InterceptorsWrapper(
          onRequest: (RequestOptions options) async {
            PYIService.dio.interceptors.requestLock.lock();
            final prefs = await SharedPreferences.getInstance();
            // prefs.remove('token');
            String token = prefs.getString('token');
            options.headers['token'] = token;
            PYIService.dio.interceptors.requestLock.unlock();
            return options;
          },
          onResponse: (Response response) {
            PYIResponse resp =
                PYIResponse.fromJson(jsonDecode(response.toString()));
            if (resp.code == 2) {
              print('error');
              final context = PYIRouter.i().context;
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('提示'),
                    content: SingleChildScrollView(
                      child: Text('登录失效, 请重新登录 .'),
                    ),
                    actions: <Widget>[
                      FlatButton(
                        child: Text('确定'),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/login');
                        },
                      )
                    ],
                  );
                },
              );
            }
            return response;
          },
        ),
      );
    }
  }
}
