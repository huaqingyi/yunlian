import 'package:dio/dio.dart';

BaseOptions httpConfig = BaseOptions(
  baseUrl: 'http://140.143.99.204',
  connectTimeout: 3 * 60 * 1000,
  receiveTimeout: 3 * 60 * 1000,
  // headers: {
  //   Headers.contentLengthHeader: postData.length, // set content-length
  // },
);
