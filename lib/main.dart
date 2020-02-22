import 'package:flutter/material.dart';
import 'package:fpyi/fpyi.dart';
import 'package:yunlian/libs/service.dart';
import 'package:yunlian/router.dart';

class App extends PYIComponent {
  final Fpyi fpyi;
  App({this.fpyi});

  @override
  Widget render(BuildContext context) {
    return MaterialApp(
      title: '云链天下',
      theme: ThemeData(primaryColor: Colors.blue),
      initialRoute: '/',
      onGenerateRoute: fpyi.getRoutes,
    );
  }
}

void main() {
  final fpyi = Fpyi(
    router: root,
  );
  fpyi.bootstrap(App(fpyi: fpyi));
}
