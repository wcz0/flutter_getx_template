// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel()
  ..id = (json['id'] as num?)?.toInt()
  ..uid = (json['uid'] as num?)?.toInt()
  ..type = json['type'] as String?
  ..productId = (json['productId'] as num?)?.toInt()
  ..productAttrUnique = json['productAttrUnique'] as String?
  ..cartNum = (json['cartNum'] as num?)?.toInt()
  ..addTime = (json['addTime'] as num?)?.toInt()
  ..isPay = (json['isPay'] as num?)?.toInt()
  ..isDel = (json['isDel'] as num?)?.toInt()
  ..isNew = (json['isNew'] as num?)?.toInt()
  ..combinationId = (json['combinationId'] as num?)?.toInt()
  ..seckillId = (json['seckillId'] as num?)?.toInt()
  ..bargainId = (json['bargainId'] as num?)?.toInt()
  ..advanceId = (json['advanceId'] as num?)?.toInt()
  ..status = (json['status'] as num?)?.toInt()
  ..productInfo = json['productInfo'] == null
      ? null
      : ProductInfoModel.fromJson(json['productInfo'] as Map<String, dynamic>)
  ..attrStatus = json['attrStatus'] as bool?
  ..vipTruePrice = (json['vipTruePrice'] as num?)?.toInt()
  ..costPrice = json['costPrice'] as String?
  ..trueStock = (json['trueStock'] as num?)?.toInt()
  ..truePrice = (json['truePrice'] as num?)?.toInt()
  ..sumPrice = json['sumPrice'] as String?
  ..priceType = json['priceType'] as String?
  ..isValid = (json['isValid'] as num?)?.toInt();

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'type': instance.type,
      'productId': instance.productId,
      'productAttrUnique': instance.productAttrUnique,
      'cartNum': instance.cartNum,
      'addTime': instance.addTime,
      'isPay': instance.isPay,
      'isDel': instance.isDel,
      'isNew': instance.isNew,
      'combinationId': instance.combinationId,
      'seckillId': instance.seckillId,
      'bargainId': instance.bargainId,
      'advanceId': instance.advanceId,
      'status': instance.status,
      'productInfo': instance.productInfo,
      'attrStatus': instance.attrStatus,
      'vipTruePrice': instance.vipTruePrice,
      'costPrice': instance.costPrice,
      'trueStock': instance.trueStock,
      'truePrice': instance.truePrice,
      'sumPrice': instance.sumPrice,
      'priceType': instance.priceType,
      'isValid': instance.isValid,
    };
