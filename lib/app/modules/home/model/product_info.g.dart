// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductInfoModel _$ProductInfoModelFromJson(Map<String, dynamic> json) =>
    ProductInfoModel()
      ..id = (json['id'] as num?)?.toInt()
      ..merId = json['merId']
      ..image = json['image'] as String?
      ..recommendImage = json['recommendImage'] as String?
      ..sliderImage = (json['sliderImage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList()
      ..storeName = json['storeName'] as String?
      ..storeInfo = json['storeInfo'] as String?
      ..keyword = json['keyword'] as String?
      ..barCode = json['barCode'] as String?
      ..cateId = json['cateId'] as String?
      ..price = json['price'] as String?
      ..vipPrice = json['vipPrice'] as String?
      ..otPrice = json['otPrice'] as String?
      ..postage = json['postage'] as String?
      ..unitName = json['unitName'] as String?
      ..sort = (json['sort'] as num?)?.toInt()
      ..sales = (json['sales'] as num?)?.toInt()
      ..stock = (json['stock'] as num?)?.toInt()
      ..isShow = (json['isShow'] as num?)?.toInt()
      ..isHot = (json['isHot'] as num?)?.toInt()
      ..isBenefit = (json['isBenefit'] as num?)?.toInt()
      ..isBest = (json['isBest'] as num?)?.toInt()
      ..isNew = (json['isNew'] as num?)?.toInt()
      ..isVirtual = (json['isVirtual'] as num?)?.toInt()
      ..virtualType = (json['virtualType'] as num?)?.toInt()
      ..addTime = (json['addTime'] as num?)?.toInt()
      ..isPostage = (json['isPostage'] as num?)?.toInt()
      ..isDel = (json['isDel'] as num?)?.toInt()
      ..merUse = (json['merUse'] as num?)?.toInt()
      ..giveIntegral = json['giveIntegral'] as String?
      ..cost = json['cost'] as String?
      ..isSeckill = (json['isSeckill'] as num?)?.toInt()
      ..isBargain = json['isBargain']
      ..isGood = (json['isGood'] as num?)?.toInt()
      ..isSub = (json['isSub'] as num?)?.toInt()
      ..isVip = (json['isVip'] as num?)?.toInt()
      ..ficti = (json['ficti'] as num?)?.toInt()
      ..browse = (json['browse'] as num?)?.toInt()
      ..codePath = json['codePath'] as String?
      ..soureLink = json['soureLink'] as String?
      ..tempId = (json['tempId'] as num?)?.toInt()
      ..specType = (json['specType'] as num?)?.toInt()
      ..activity = json['activity'] as String?
      ..spu = json['spu'] as String?
      ..labelId = json['labelId'] as String?
      ..videoLink = json['videoLink'] as String?
      ..commandWord = json['commandWord'] as String?
      ..recommendList = json['recommendList'] as String?
      ..vipProduct = (json['vipProduct'] as num?)?.toInt()
      ..presale = (json['presale'] as num?)?.toInt()
      ..presaleStartTime = (json['presaleStartTime'] as num?)?.toInt()
      ..presaleEndTime = (json['presaleEndTime'] as num?)?.toInt()
      ..presaleDay = (json['presaleDay'] as num?)?.toInt()
      ..logistics = json['logistics'] as String?
      ..freight = (json['freight'] as num?)?.toInt()
      ..customForm = json['customForm'] as String?
      ..isLimit = (json['isLimit'] as num?)?.toInt()
      ..limitType = (json['limitType'] as num?)?.toInt()
      ..limitNum = (json['limitNum'] as num?)?.toInt()
      ..minQty = (json['minQty'] as num?)?.toInt()
      ..expressDelivery = json['expressDelivery'] as bool?
      ..storeMention = json['storeMention'] as bool?;

Map<String, dynamic> _$ProductInfoModelToJson(ProductInfoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merId': instance.merId,
      'image': instance.image,
      'recommendImage': instance.recommendImage,
      'sliderImage': instance.sliderImage,
      'storeName': instance.storeName,
      'storeInfo': instance.storeInfo,
      'keyword': instance.keyword,
      'barCode': instance.barCode,
      'cateId': instance.cateId,
      'price': instance.price,
      'vipPrice': instance.vipPrice,
      'otPrice': instance.otPrice,
      'postage': instance.postage,
      'unitName': instance.unitName,
      'sort': instance.sort,
      'sales': instance.sales,
      'stock': instance.stock,
      'isShow': instance.isShow,
      'isHot': instance.isHot,
      'isBenefit': instance.isBenefit,
      'isBest': instance.isBest,
      'isNew': instance.isNew,
      'isVirtual': instance.isVirtual,
      'virtualType': instance.virtualType,
      'addTime': instance.addTime,
      'isPostage': instance.isPostage,
      'isDel': instance.isDel,
      'merUse': instance.merUse,
      'giveIntegral': instance.giveIntegral,
      'cost': instance.cost,
      'isSeckill': instance.isSeckill,
      'isBargain': instance.isBargain,
      'isGood': instance.isGood,
      'isSub': instance.isSub,
      'isVip': instance.isVip,
      'ficti': instance.ficti,
      'browse': instance.browse,
      'codePath': instance.codePath,
      'soureLink': instance.soureLink,
      'tempId': instance.tempId,
      'specType': instance.specType,
      'activity': instance.activity,
      'spu': instance.spu,
      'labelId': instance.labelId,
      'videoLink': instance.videoLink,
      'commandWord': instance.commandWord,
      'recommendList': instance.recommendList,
      'vipProduct': instance.vipProduct,
      'presale': instance.presale,
      'presaleStartTime': instance.presaleStartTime,
      'presaleEndTime': instance.presaleEndTime,
      'presaleDay': instance.presaleDay,
      'logistics': instance.logistics,
      'freight': instance.freight,
      'customForm': instance.customForm,
      'isLimit': instance.isLimit,
      'limitType': instance.limitType,
      'limitNum': instance.limitNum,
      'minQty': instance.minQty,
      'expressDelivery': instance.expressDelivery,
      'storeMention': instance.storeMention,
    };
