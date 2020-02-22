import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';

class Setting extends PYIComponent {
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: double.infinity,
        child: Container(
          height: double.infinity,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('订单管理'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text('客户管理'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text('用户管理'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
              ListTile(
                title: Text('权限管理'),
                trailing: Icon(Icons.keyboard_arrow_right),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
