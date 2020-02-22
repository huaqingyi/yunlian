import 'package:fpyi/fpyi.dart';
import 'package:yunlian/layout/layout.dart';
import 'package:yunlian/login/login.dart';
import 'package:yunlian/layout/router.dart';

List<PYIRoute> root = [
  PYIRoute(
    path: '/',
    component: Layout(),
    children: layout,
  ),
  PYIRoute(
    path: '/login',
    component: Login(),
  )
];
