import 'package:json_annotation/json_annotation.dart';

part 'product_info.g.dart';

@JsonSerializable()
class ProductInfoModel {
  ProductInfoModel();
  int? id;
  dynamic merId;
  String? image;
  String? recommendImage;
  List<String>? sliderImage;
  String? storeName;
  String? storeInfo;
  String? keyword;
  String? barCode;
  String? cateId;
  String? price;
  String? vipPrice;
  String? otPrice;
  String? postage;
  String? unitName;
  int? sort;
  int? sales;
  int? stock;
  int? isShow;
  int? isHot;
  int? isBenefit;
  int? isBest;
  int? isNew;
  int? isVirtual;
  int? virtualType;
  int? addTime;
  int? isPostage;
  int? isDel;
  int? merUse;
  String? giveIntegral;
  String? cost;
  int? isSeckill;
  dynamic isBargain;
  int? isGood;
  int? isSub;
  int? isVip;
  int? ficti;
  int? browse;
  String? codePath;
  String? soureLink;
  int? tempId;
  int? specType;
  String? activity;
  String? spu;
  String? labelId;
  String? videoLink;
  String? commandWord;
  String? recommendList;
  int? vipProduct;
  int? presale;
  int? presaleStartTime;
  int? presaleEndTime;
  int? presaleDay;
  String? logistics;
  int? freight;
  String? customForm;
  int? isLimit;
  int? limitType;
  int? limitNum;
  int? minQty;
  bool? expressDelivery;
  bool? storeMention;
  // TODO: Add more fields
  // AttrInfo attrInfo;

  factory ProductInfoModel.fromJson(Map<String, dynamic> json) =>
      _$ProductInfoModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductInfoModelToJson(this);
}
