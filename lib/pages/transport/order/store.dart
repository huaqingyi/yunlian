import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import 'package:yunlian/pages/transport/order/impl/dao.dart';
import 'package:yunlian/pages/transport/order/service.dart';

part 'store.g.dart';

class OrderStore = _OrderStore with _$OrderStore;

abstract class _OrderStore with Store {
  @observable
  Response<dynamic> freightQueryResponse;

  @observable
  OrderService service;

  _OrderStore() {
    this.service = OrderService();
  }

  Future<Response<dynamic>> freightQuery(FreightQueryRequest request) async {
    this.freightQueryResponse = await this.service.freightQuery(request);
    return this.freightQueryResponse;
  }
}
