import 'package:dio/dio.dart';
import 'package:yunlian/libs/service.dart';
import 'package:yunlian/pages/transport/order/impl/dao.dart';

class OrderService extends PYIService {
  Future<Response<dynamic>> freightQuery(
    FreightQueryRequest request,
  ) async {
    return await this
        .http
        .get('/freight/query', queryParameters: request.toJson());
  }
}
