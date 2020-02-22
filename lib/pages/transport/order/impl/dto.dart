import 'package:json_annotation/json_annotation.dart';

part 'dto.g.dart';

@JsonSerializable()
class FreightQueryRow {
  String id; // "WB2020021900001"
  String freightNum; // null
  String logisticsImageUrl; // null
  String deliverImageUrl; // null
  String warrantyImageUrl; // null
  String orderNum; // "397"
  String freightProductList; // [,…]
  int delivery; // 2
  String carrierId; // null
  String carrierName; // null
  String shippingType; // "H"
  String shippingAddress; // "四川省成都市武侯区"
  String freightCost; // null
  String receivingAddress; // "四川省成都市武侯区"
  String receivingContact; // "3424"
  String contactInformation; // "18613230873"
  String receivingImageUrl; // null
  String createTime; // "2020-02-19 20:50:29"
  String creater; // "丘月明"
  String updateTime; // "2020-02-19 20:50:43"
  String modifier; // "丘月明"
  int status; // 6
  bool hidden; // true
  String remark; // null
  String resetStatus; // null
  String reason; // null
  String revokeReason; // null
  String freightLogList; // null

  FreightQueryRow({
    this.id, // "WB2020021900001"
    this.freightNum, // null
    this.logisticsImageUrl, // null
    this.deliverImageUrl, // null
    this.warrantyImageUrl, // null
    this.orderNum, // "397"
    this.freightProductList, // [,…]
    this.delivery, // 2
    this.carrierId, // null
    this.carrierName, // null
    this.shippingType, // "H"
    this.shippingAddress, // "四川省成都市武侯区"
    this.freightCost, // null
    this.receivingAddress, // "四川省成都市武侯区"
    this.receivingContact, // "3424"
    this.contactInformation, // "18613230873"
    this.receivingImageUrl, // null
    this.createTime, // "2020-02-19 20:50:29"
    this.creater, // "丘月明"
    this.updateTime, // "2020-02-19 20:50:43"
    this.modifier, // "丘月明"
    this.status, // 6
    this.hidden, // true
    this.remark, // null
    this.resetStatus, // null
    this.reason, // null
    this.revokeReason, // null
    this.freightLogList, // null
  });

  factory FreightQueryRow.fromJson(Map<String, dynamic> json) =>
      _$FreightQueryRowFromJson(json);

  Map<String, dynamic> toJson() => _$FreightQueryRowToJson(this);
}

@JsonSerializable()
class FreightQueryResponse {
  int code;
  String message;
  List<FreightQueryRow> data;
  int total;
  int pageNum;
  int size;
  FreightQueryResponse({
    this.code,
    this.message,
    this.data,
    this.total,
    this.pageNum,
    this.size,
  });

  factory FreightQueryResponse.fromJson(Map<String, dynamic> json) =>
      _$FreightQueryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FreightQueryResponseToJson(this);
}
