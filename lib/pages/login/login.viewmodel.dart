// ViewModel
import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:quickstart_flutter/core/model.dart';
import 'package:quickstart_flutter/models/user.model.dart';
import 'package:quickstart_flutter/services/user.service.dart';
import 'package:quickstart_flutter/store/auth.store.dart';

class LoginViewModel extends ChangeNotifier {
  final userService = UserService();

  final pageController = PageController(initialPage: 0);
  final phoneController = TextEditingController();
  final userStore = Modular.get<AuthStore>();
  final logger = Modular.get<Logger>();
  int defaultTimeSpan = 60;
  int countDown = 0;

  Timer timer;
  void onStart() {
    pageController.nextPage(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.linear,
    );
  }

  void onBack() {
    pageController.previousPage(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.linear,
    );
  }

  void onSendVerifyCode() {
    // userService.sendLoginVerificationCode({
    //   "mobile": phoneController.text,
    // }).listen((data) {
    if (pageController.page != 3) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.linear,
      );
    }

    startTimer();
    // });
  }

  void startTimer() {
    countDown = defaultTimeSpan;
    timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (countDown < 1) {
        timer.cancel();
      } else {
        countDown -= 1;
        notifyListeners();
      }
    });
  }

  // 提交登录信息
  void onSubmit(code) async {
    // userService.loginByMobile({
    //   "code": code,
    //   "mobile": phoneController.text,
    // }).listen(
    // (data) => loginSuccess(data),
    // );

    loginSuccess({
      'user': {
        'id': '1',
        'username': 'test',
        'gender': 'test',
        'birthday': 'test',
        'introduction': 'test',
        'lastLoginTime': 'test',
        'lastLoginIp': 'test',
        'nickname': 'test',
        'mobile': 'test',
        'avatar': 'test',
        'shortKey': 'test'
      },
      'token': 'token string'
    });
  }

  // 登录成功
  void loginSuccess(data) async {
    timer.cancel();
    final preferences = await SharedPreferences.getInstance();
    // 获取用户信息
    // 转为JSON格式
    final user = json.encode(data["user"]);
    final token = data["token"];

    // // 存储用户信息
    await preferences.setString("userToken", token);
    // // 更新用户信息
    userStore.updateUser(user: Model.fromJson<UserModel>(user));
    userStore.updateToken(token: token);

    // // 进入首页
    Modular.to.pushNamed('/home');
  }
}
