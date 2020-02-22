import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';

class Carrier extends PYIComponent {
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          FlatButton(
            child: Text('to Order'),
            onPressed: () {
              Navigator.of(context).pushNamed('/transport/order');
            },
          ),
        ],
      ),
    );
  }
}
