import 'package:json_annotation/json_annotation.dart';
import 'package:shop_flutter/app/modules/home/model/product_info.dart';
import 'package:shop_flutter/app/modules/other/user.dart';

part 'cart.g.dart';

@JsonSerializable()
class CartModel {
  CartModel();
  int? id;
  int? uid;
  String? type;
  int? productId;
  String? productAttrUnique;
  int? cartNum;
  int? addTime;
  int? isPay;
  int? isDel;
  int? isNew;
  int? combinationId;
  int? seckillId;
  int? bargainId;
  int? advanceId;
  int? status;
  ProductInfoModel? productInfo;
  bool? attrStatus;
  int? vipTruePrice;
  String? costPrice;
  int? trueStock;
  int? truePrice;
  String? sumPrice;
  String? priceType;
  int? isValid;

  factory CartModel.fromJson(Map<String, dynamic> json) => _$CartModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
