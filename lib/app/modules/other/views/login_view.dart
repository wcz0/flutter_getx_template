import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_flutter/app/core/base/base_view.dart';
import 'package:shop_flutter/app/modules/common/views/copyright.dart';
import 'package:shop_flutter/app/modules/other/controllers/login_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginView extends BaseView<LoginController> {
  LoginView({super.key});

  @override
  PreferredSizeWidget? appBar(BuildContext context) => null;

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: <Widget>[
                TextFormField(
                  key: controller.phoneKey,
                  autofocus: true,
                  controller: controller.phoneController,
                  decoration: const InputDecoration(
                    labelText: '手机号',
                    hintText: '请输入手机号',
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (v) {
                    controller.phone.value = v;
                  },
                  validator: (str) => controller.phoneCheck(str),
                  // validator: (v) {
                  //   final RegExp phoneRegex = RegExp(r'^1[0-9]{10}$');
                  //   // 去除首尾空格后判断是否为空
                  //   if (v!.trim().isEmpty) {
                  //     return '手机号不能为空';
                  //   }
                  //   // 判断是否符合手机号格式
                  //   if (!phoneRegex.hasMatch(v)) {
                  //     return '请输入有效的手机号';
                  //   }
                  //   return null;
                  // },
                ),
                Obx(() => Visibility(
                      visible: controller.passwordControllerVisible.value,
                      child: TextFormField(
                        key: controller.passwordKey,
                        controller: controller.passwordController,
                        decoration: InputDecoration(
                          labelText: '密码',
                          hintText: '请输入密码',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.pwdShow.value
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                            ),
                            onPressed: () {
                              controller.pwdShow.value =
                                  !controller.pwdShow.value;
                            },
                          ),
                        ),
                        validator: (value) =>
                            value!.trim().isNotEmpty ? null : '密码不能为空',
                        obscureText: !controller.pwdShow.value,
                      ),
                    )),
                Obx(() => Visibility(
                      visible: controller.codeControllerVisible.value,
                      child: TextFormField(
                        key: controller.codeKey,
                        controller: controller.codeController,
                        decoration: InputDecoration(
                          labelText: '验证码',
                          hintText: '请输入验证码',
                          prefixIcon: const Icon(Icons.message),
                          suffixIcon: TextButton(
                            onPressed: () => controller.sendCode(context),
                            child: const Text('验证码'),
                          ),
                        ),
                        validator: (value) =>
                            value!.trim().isNotEmpty ? null : '验证码不能为空',
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.expand(height: 55.0),
                    child: ElevatedButton(
                      onPressed: controller.loginButtonDisabled.value
                          ? null
                          : () => controller.onLogin(context),
                      child: const Text('登录'),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Obx(
                      () => TextButton(
                        onPressed: () => controller.switchPasswordLogin(),
                        child: Text(
                          controller.buttonLabel.value,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 147, 147, 147),
                          ),
                        ),
                      ),
                    )),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Obx(() => Checkbox(
                        value: controller.checkBox.value,
                        onChanged: (bool? value) {
                          controller.checkBox.value = value!;
                        },
                      )),
                  RichText(
                    text: TextSpan(
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                        children: [
                          const TextSpan(
                            text: '已阅读并同意',
                          ),
                          TextSpan(
                            text: '《用户协议》',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrl(Uri.parse(
                                    'https://v5.crmeb.net/pages/users/privacy/index?type=4'));
                              },
                          ),
                          const TextSpan(text: '和'),
                          TextSpan(
                            text: '《隐私协议》',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrl(Uri.parse(
                                    'https://v5.crmeb.net/pages/users/privacy/index?type=3'));
                              },
                          ),
                        ]),
                  ),
                ]),
                ...buildCopyRight(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
