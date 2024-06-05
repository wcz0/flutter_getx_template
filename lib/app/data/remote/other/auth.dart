import 'package:shop_flutter/app/data/model/other/login_response.dart';

abstract class Auth {
  Future<LoginResponse> loginByCode(String phone, String code, String spread);
  Future<LoginResponse> loginByPassword(String account, String password);
}