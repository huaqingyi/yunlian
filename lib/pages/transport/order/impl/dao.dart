import 'package:json_annotation/json_annotation.dart';

part 'dao.g.dart';

@JsonSerializable()
class FreightQueryRequest{
  int pageNum;
  int pageSize;
  int hidden;
  String creater;
  String orderNum;
  String freightNum;
  FreightQueryRequest({
    this.pageNum,
    this.pageSize,
    this.hidden,
    this.creater,
    this.orderNum,
    this.freightNum,
  });

  factory FreightQueryRequest.fromJson(Map<String, dynamic> json) =>
      _$FreightQueryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FreightQueryRequestToJson(this);
}
