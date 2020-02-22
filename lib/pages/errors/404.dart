import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';

class NotFound extends PYIComponent {
  @override
  Widget render(BuildContext context) {
    return Scaffold(
      body: Center(
        heightFactor: double.infinity,
        child: Text('Not Found ...'),
      ),
    );
  }
}
