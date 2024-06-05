import 'package:shop_flutter/app/core/base/base_remote_source.dart';
import 'package:shop_flutter/app/data/model/other/login_response.dart';
import 'package:shop_flutter/app/data/remote/other/auth.dart';
import 'package:shop_flutter/app/network/dio_provider.dart';

class AuthImpl extends BaseRemoteSource implements Auth {
  @override
  Future<LoginResponse> loginByCode(String phone, String code, String spread) {
    var endpoint = "${DioProvider.baseUrl}/login/mobile";
    var dioCall = dioClient.post(endpoint, data: {
      "phone": phone,
      "code": code,
      "spread": spread,
    });
    try {
      return callApiWithErrorParser(dioCall)
          .then((data) => LoginResponse.fromJson(data));
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<LoginResponse> loginByPassword(String account, String password) {
    var endpoint = "${DioProvider.baseUrl}/login/password";
    var dioCall = dioClient.post(endpoint, data: {
      "account": account,
      "password": password,
    });
    try {
      return callApiWithErrorParser(dioCall)
          .then((data) => LoginResponse.fromJson(data));
    } catch (e) {
      rethrow;
    }
  }
}
