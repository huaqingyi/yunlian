// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreightQueryRequest _$FreightQueryRequestFromJson(Map<String, dynamic> json) {
  return FreightQueryRequest(
    pageNum: json['pageNum'] as int,
    pageSize: json['pageSize'] as int,
    hidden: json['hidden'] as int,
    creater: json['creater'] as String,
    orderNum: json['orderNum'] as String,
    freightNum: json['freightNum'] as String,
  );
}

Map<String, dynamic> _$FreightQueryRequestToJson(
        FreightQueryRequest instance) =>
    <String, dynamic>{
      'pageNum': instance.pageNum,
      'pageSize': instance.pageSize,
      'hidden': instance.hidden,
      'creater': instance.creater,
      'orderNum': instance.orderNum,
      'freightNum': instance.freightNum,
    };
