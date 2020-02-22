// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreightQueryRow _$FreightQueryRowFromJson(Map<String, dynamic> json) {
  return FreightQueryRow(
    id: json['id'] as String,
    freightNum: json['freightNum'] as String,
    logisticsImageUrl: json['logisticsImageUrl'] as String,
    deliverImageUrl: json['deliverImageUrl'] as String,
    warrantyImageUrl: json['warrantyImageUrl'] as String,
    orderNum: json['orderNum'] as String,
    freightProductList: json['freightProductList'] as String,
    delivery: json['delivery'] as int,
    carrierId: json['carrierId'] as String,
    carrierName: json['carrierName'] as String,
    shippingType: json['shippingType'] as String,
    shippingAddress: json['shippingAddress'] as String,
    freightCost: json['freightCost'] as String,
    receivingAddress: json['receivingAddress'] as String,
    receivingContact: json['receivingContact'] as String,
    contactInformation: json['contactInformation'] as String,
    receivingImageUrl: json['receivingImageUrl'] as String,
    createTime: json['createTime'] as String,
    creater: json['creater'] as String,
    updateTime: json['updateTime'] as String,
    modifier: json['modifier'] as String,
    status: json['status'] as int,
    hidden: json['hidden'] as bool,
    remark: json['remark'] as String,
    resetStatus: json['resetStatus'] as String,
    reason: json['reason'] as String,
    revokeReason: json['revokeReason'] as String,
    freightLogList: json['freightLogList'] as String,
  );
}

Map<String, dynamic> _$FreightQueryRowToJson(FreightQueryRow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'freightNum': instance.freightNum,
      'logisticsImageUrl': instance.logisticsImageUrl,
      'deliverImageUrl': instance.deliverImageUrl,
      'warrantyImageUrl': instance.warrantyImageUrl,
      'orderNum': instance.orderNum,
      'freightProductList': instance.freightProductList,
      'delivery': instance.delivery,
      'carrierId': instance.carrierId,
      'carrierName': instance.carrierName,
      'shippingType': instance.shippingType,
      'shippingAddress': instance.shippingAddress,
      'freightCost': instance.freightCost,
      'receivingAddress': instance.receivingAddress,
      'receivingContact': instance.receivingContact,
      'contactInformation': instance.contactInformation,
      'receivingImageUrl': instance.receivingImageUrl,
      'createTime': instance.createTime,
      'creater': instance.creater,
      'updateTime': instance.updateTime,
      'modifier': instance.modifier,
      'status': instance.status,
      'hidden': instance.hidden,
      'remark': instance.remark,
      'resetStatus': instance.resetStatus,
      'reason': instance.reason,
      'revokeReason': instance.revokeReason,
      'freightLogList': instance.freightLogList,
    };

FreightQueryResponse _$FreightQueryResponseFromJson(Map<String, dynamic> json) {
  return FreightQueryResponse(
    code: json['code'] as int,
    message: json['message'] as String,
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : FreightQueryRow.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: json['total'] as int,
    pageNum: json['pageNum'] as int,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$FreightQueryResponseToJson(
        FreightQueryResponse instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'total': instance.total,
      'pageNum': instance.pageNum,
      'size': instance.size,
    };
