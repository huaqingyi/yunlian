import 'package:fpyi/fpyi.dart';
import 'package:yunlian/pages/finance/finance.dart';
import 'package:yunlian/pages/goods/goods.dart';
import 'package:yunlian/pages/setting/setting.dart';
import 'package:yunlian/pages/supplier/supplier.dart';
import 'package:yunlian/pages/transport/transport.dart';

List<PYIRoute> layout = [
  PYIRoute(
    path: '/',
    component: Finance(),
  ),
  PYIRoute(
    path: '/finance',
    component: Finance(),
  ),
  PYIRoute(
    path: '/goods',
    component: Goods(),
  ),
  PYIRoute(
    path: '/setting',
    component: Setting(),
  ),
  PYIRoute(
    path: '/supplier',
    component: Supplier(),
  ),
  PYIRoute(
    path: '/transport',
    component: Transport(),
  ),
];
