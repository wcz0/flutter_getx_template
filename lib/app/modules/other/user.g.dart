// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel()
  ..uid = (json['uid'] as num?)?.toInt()
  ..nickname = json['nickname'] as String?
  ..realName = json['realName'] as String?
  ..avatar = json['avatar'] as String?
  ..phone = json['phone'] as String?
  ..addTime = (json['addTime'] as num?)?.toInt()
  ..lastTime = (json['lastTime'] as num?)?.toInt()
  ..nowMoney = json['nowMoney'] as String?
  ..brokeragePrice = json['brokeragePrice'] as String?
  ..integral = (json['integral'] as num?)?.toInt()
  ..exp = json['exp'] as String?
  ..signNum = (json['signNum'] as num?)?.toInt()
  ..signRemind = (json['signRemind'] as num?)?.toInt()
  ..status = (json['status'] as num?)?.toInt()
  ..level = (json['level'] as num?)?.toInt()
  ..agentLevel = (json['agentLevel'] as num?)?.toInt()
  ..spreadOpen = (json['spreadOpen'] as num?)?.toInt()
  ..spreadUid = (json['spreadUid'] as num?)?.toInt()
  ..spreadTime = (json['spreadTime'] as num?)?.toInt()
  ..userType = json['userType'] as String?
  ..isPromoter = (json['isPromoter'] as num?)?.toInt()
  ..payCount = (json['payCount'] as num?)?.toInt()
  ..spreadCount = (json['spreadCount'] as num?)?.toInt()
  ..loginType = json['loginType'] as String?
  ..birthday = json['birthday'] as String?
  ..cardId = json['cardId'] as String?
  ..mark = json['mark'] as String?
  ..groupId = (json['groupId'] as num?)?.toInt()
  ..addres = json['addres'] as String?
  ..adminid = json['adminid'] as bool?
  ..recordPhone = json['recordPhone'] as String?
  ..isMoneyLevel = (json['isMoneyLevel'] as num?)?.toInt()
  ..isEverLevel = (json['isEverLevel'] as num?)?.toInt()
  ..overdueTime = (json['overdueTime'] as num?)?.toInt()
  ..uniqid = json['uniqid'] as String?
  ..divisionType = (json['divisionType'] as num?)?.toInt()
  ..divisionStatus = (json['divisionStatus'] as num?)?.toInt()
  ..isDivision = (json['isDivision'] as num?)?.toInt()
  ..isAgent = (json['isAgent'] as num?)?.toInt()
  ..isStaff = (json['isStaff'] as num?)?.toInt()
  ..divisionId = (json['divisionId'] as num?)?.toInt()
  ..agentId = (json['agentId'] as num?)?.toInt()
  ..staffId = (json['staffId'] as num?)?.toInt()
  ..divisionPercent = (json['divisionPercent'] as num?)?.toInt()
  ..divisionChangeTime = (json['divisionChangeTime'] as num?)?.toInt()
  ..divisionEndTime = (json['divisionEndTime'] as num?)?.toInt()
  ..divisionInvite = (json['divisionInvite'] as num?)?.toInt()
  ..isDel = (json['isDel'] as num?)?.toInt()
  ..isOpenMember = json['isOpenMember'] as bool?
  ..agentLevelName = json['agentLevelName'] as String?
  ..isComplete = (json['isComplete'] as num?)?.toInt()
  ..couponCount = (json['couponCount'] as num?)?.toInt()
  ..like = (json['like'] as num?)?.toInt()
  ..notice = (json['notice'] as num?)?.toInt()
  ..recharge = (json['recharge'] as num?)?.toInt()
  ..orderStatusSum = json['orderStatusSum'] as String?
  ..extractTotalPrice = (json['extractTotalPrice'] as num?)?.toInt()
  ..extractPrice = json['extractPrice'] as String?
  ..statu = (json['statu'] as num?)?.toInt()
  ..brokenCommission = (json['brokenCommission'] as num?)?.toInt()
  ..commissionCount = json['commissionCount'] as String?
  ..vip = json['vip'] as bool?
  ..yesterDay = (json['yesterDay'] as num?)?.toInt()
  ..rechargeSwitch = (json['rechargeSwitch'] as num?)?.toInt()
  ..brokenDay = (json['brokenDay'] as num?)?.toInt()
  ..balanceFuncStatus = (json['balanceFuncStatus'] as num?)?.toInt()
  ..invioceFunc = json['invioceFunc'] as bool?
  ..specialInvoice = json['specialInvoice'] as bool?
  ..collectCount = (json['collectCount'] as num?)?.toInt()
  ..spreadStatus = json['spreadStatus'] as bool?
  ..payVipStatus = json['payVipStatus'] as bool?
  ..memberStyle = (json['memberStyle'] as num?)?.toInt()
  ..vipStatus = (json['vipStatus'] as num?)?.toInt()
  ..svipOpen = json['svipOpen'] as bool?
  ..serviceNum = (json['serviceNum'] as num?)?.toInt()
  ..spreadLevelCount = (json['spreadLevelCount'] as num?)?.toInt()
  ..extractType =
      (json['extractType'] as List<dynamic>?)?.map((e) => e as String).toList()
  ..isAgentLevel = (json['isAgentLevel'] as num?)?.toInt()
  ..divisionOpen = (json['divisionOpen'] as num?)?.toInt()
  ..agentApplyOpen = (json['agentApplyOpen'] as num?)?.toInt()
  ..isDefaultAvatar = (json['isDefaultAvatar'] as num?)?.toInt();

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'uid': instance.uid,
      'nickname': instance.nickname,
      'realName': instance.realName,
      'avatar': instance.avatar,
      'phone': instance.phone,
      'addTime': instance.addTime,
      'lastTime': instance.lastTime,
      'nowMoney': instance.nowMoney,
      'brokeragePrice': instance.brokeragePrice,
      'integral': instance.integral,
      'exp': instance.exp,
      'signNum': instance.signNum,
      'signRemind': instance.signRemind,
      'status': instance.status,
      'level': instance.level,
      'agentLevel': instance.agentLevel,
      'spreadOpen': instance.spreadOpen,
      'spreadUid': instance.spreadUid,
      'spreadTime': instance.spreadTime,
      'userType': instance.userType,
      'isPromoter': instance.isPromoter,
      'payCount': instance.payCount,
      'spreadCount': instance.spreadCount,
      'loginType': instance.loginType,
      'birthday': instance.birthday,
      'cardId': instance.cardId,
      'mark': instance.mark,
      'groupId': instance.groupId,
      'addres': instance.addres,
      'adminid': instance.adminid,
      'recordPhone': instance.recordPhone,
      'isMoneyLevel': instance.isMoneyLevel,
      'isEverLevel': instance.isEverLevel,
      'overdueTime': instance.overdueTime,
      'uniqid': instance.uniqid,
      'divisionType': instance.divisionType,
      'divisionStatus': instance.divisionStatus,
      'isDivision': instance.isDivision,
      'isAgent': instance.isAgent,
      'isStaff': instance.isStaff,
      'divisionId': instance.divisionId,
      'agentId': instance.agentId,
      'staffId': instance.staffId,
      'divisionPercent': instance.divisionPercent,
      'divisionChangeTime': instance.divisionChangeTime,
      'divisionEndTime': instance.divisionEndTime,
      'divisionInvite': instance.divisionInvite,
      'isDel': instance.isDel,
      'isOpenMember': instance.isOpenMember,
      'agentLevelName': instance.agentLevelName,
      'isComplete': instance.isComplete,
      'couponCount': instance.couponCount,
      'like': instance.like,
      'notice': instance.notice,
      'recharge': instance.recharge,
      'orderStatusSum': instance.orderStatusSum,
      'extractTotalPrice': instance.extractTotalPrice,
      'extractPrice': instance.extractPrice,
      'statu': instance.statu,
      'brokenCommission': instance.brokenCommission,
      'commissionCount': instance.commissionCount,
      'vip': instance.vip,
      'yesterDay': instance.yesterDay,
      'rechargeSwitch': instance.rechargeSwitch,
      'brokenDay': instance.brokenDay,
      'balanceFuncStatus': instance.balanceFuncStatus,
      'invioceFunc': instance.invioceFunc,
      'specialInvoice': instance.specialInvoice,
      'collectCount': instance.collectCount,
      'spreadStatus': instance.spreadStatus,
      'payVipStatus': instance.payVipStatus,
      'memberStyle': instance.memberStyle,
      'vipStatus': instance.vipStatus,
      'svipOpen': instance.svipOpen,
      'serviceNum': instance.serviceNum,
      'spreadLevelCount': instance.spreadLevelCount,
      'extractType': instance.extractType,
      'isAgentLevel': instance.isAgentLevel,
      'divisionOpen': instance.divisionOpen,
      'agentApplyOpen': instance.agentApplyOpen,
      'isDefaultAvatar': instance.isDefaultAvatar,
    };
