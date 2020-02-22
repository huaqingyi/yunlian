// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class LayoutStore = _LayoutStore with _$LayoutStore;

abstract class _LayoutStore with Store {
  @observable
  int isLogin;

  @observable
  int value = 0;

  @observable
  int currentIndex = 0;

  @observable
  Route<dynamic> component;

  @observable
  BuildContext context;

  @action
  void increment() {
    value++;
  }

  _LayoutStore() {
    isLogin = 0;
  }

  @action
  void setContext(BuildContext context) {
    this.context = context;
  }

  @action
  void setCurrent(int index) {
    this.currentIndex = index;
  }

  @action
  PopupMenuItem<String> createHeaderBtn(IconData icon, String text, String id) {
    return PopupMenuItem<String>(
      value: id,
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Icon(icon, color: Colors.blue),
          new Text(text),
        ],
      ),
    );
  }

  @action
  void onItemSelected(int index) {
    this.setCurrent(index);
    switch (index) {
      case 0:
        Navigator.of(context).pushNamed('/finance');
        break;
      case 1:
        Navigator.of(context).pushNamed('/transport');
        break;
      case 2:
        Navigator.of(context).pushNamed('/goods');
        break;
      case 3:
        Navigator.of(context).pushNamed('/supplier');
        break;
      case 4:
        Navigator.of(context).pushNamed('/setting');
        break;
    }
  }
}

final layoutStore = LayoutStore();