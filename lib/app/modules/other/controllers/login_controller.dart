import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shop_flutter/app/core/base/base_controller.dart';
import 'package:shop_flutter/app/data/model/other/login_response.dart';
import 'package:shop_flutter/app/data/remote/other/auth.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginController extends BaseController {
  GlobalKey<FormFieldState> phoneKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> codeKey = GlobalKey<FormFieldState>();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  final phone = ''.obs;
  final password = ''.obs;
  final code = ''.obs;
  final buttonLabel = '账号登录'.obs;
  final pwdShow = false.obs;
  final checkBox = false.obs;
  final codeControllerVisible = true.obs;
  final passwordControllerVisible = false.obs;
  final loginButtonDisabled = false.obs;

  late OverlayEntry overlayEntry;

  final SharedPreferences _prefs = Get.find();
  final Auth auth = Get.find();

  @override
  void onInit() {
    super.onInit();
    String? phone = _prefs.getString('last-phone');
    if (phone != null) {
      phoneController.text = phone;
    }
    overlayEntry = OverlayEntry(
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  // 登录按钮点击事件
  Future<void> onLogin(BuildContext context) async {
    if (!checkBoxValue()) return;
    showLoading();
    loginButtonDisabled.value = true;
    LoginResponse response;
    if (buttonLabel.value != '账号登录') {
      await _loginByCode();
      response = await auth.loginByCode(
          phoneController.text, codeController.text, '0');
    } else {
      await _loginByPassword();
      response = await auth.loginByPassword(
          phoneController.text, passwordController.text);
    }
    _prefs.setString('token', response.token);
    _prefs.setString('last-phone', phoneController.text);
    loginButtonDisabled.value = false;
    hideLoading();
  }

  Future<void> _loginByPassword() async {
    if (!phoneKey.currentState!.validate()) {
      return;
    }
    if (!passwordKey.currentState!.validate()) {
      return;
    }
  }

  Future<void> _loginByCode() async {
    if (!phoneKey.currentState!.validate()) {
      return;
    }
    if (!codeKey.currentState!.validate()) {
      return;
    }
  }

  String phoneCheck(String? str) {
    final RegExp phoneRegex = RegExp(r'^1[0-9]{10}$');
    // 去除首尾空格后判断是否为空
    if (str!.trim().isEmpty) {
      return '手机号不能为空';
    }
    // 判断是否符合手机号格式
    if (!phoneRegex.hasMatch(str)) {
      return '请输入有效的手机号';
    }
    return '';
  }

  // 切换密码登录和验证码登录
  void switchPasswordLogin() {
    codeControllerVisible.value = !codeControllerVisible.value;
    passwordControllerVisible.value = !passwordControllerVisible.value;
    buttonLabel.value = codeControllerVisible.value ? '账号登录' : '验证码登录';
  }

  // 检测 checkBox 是否选中
  bool checkBoxValue() {
    if (!checkBox.value) {
      scaffoldMessenger('请先同意用户协议和隐私协议');
      return false;
    }
    return true;
  }

  // 显示 toast 消息
  void scaffoldMessenger(String msg) {
    ScaffoldMessenger.of(Get.context!).removeCurrentSnackBar();
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  void sendCode(BuildContext context) {
    if (!checkBoxValue()) return;
    if (!phoneKey.currentState!.validate()) return;
    WebViewController webview = WebViewController()
      ..loadRequest(Uri.parse('https://v5.crmeb.net/pages/users/login/index'))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: WebViewWidget(
                    controller: webview,
                  ),
                ),
                SizedBox(
                  child: TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: const Text('完成'),
                  ),
                ),
              ],
            ),
          );
        });

    double width = MediaQuery.of(context).size.width;
    int htmlWidth = (width * 8 ~/ 10).toInt();
    webview.runJavaScript('''
      var v = document.getElementsByClassName('verifybox')[0];
      v.style.maxWidth = '${htmlWidth}px';
      var img = document.getElementsByClassName('verify-image-panel')[0];
      img.style = '${htmlWidth}px; height: 155px; margin-bottom: 5px;';
      var bar = document.getElementsByClassName('verify-bar-area')[0];
      bar.style = 'width: ${htmlWidth - 25}px; color: rgb(0, 0, 0); border-color: rgb(221, 221, 221); line-height: 40px';
      var input = document.getElementsByClassName('uni-input-input')[0];
      input.value = '${phoneController.text}';
      input.dispatchEvent(new Event('input'));
      document.getElementsByClassName('uni-checkbox-input')[0].click();
      document.getElementsByTagName('uni-button')[0].click()
    ''');
  }
}
