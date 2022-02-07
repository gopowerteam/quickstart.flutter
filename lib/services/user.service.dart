import 'package:quickstart_flutter/config/services/user.controller.dart';
import 'package:quickstart_flutter/core/http/request_option.dart';
import 'package:quickstart_flutter/core/http/net.service.dart';

class UserService {
  final net = NetService();

  Stream sendLoginVerificationCode(data) {
    return net.send(RequestOption(
      data: data,
      loading: true,
      service: UserController.sendLoginVerificationCode,
    ));
  }

  Stream loginByMobile(data) {
    return net.send(RequestOption(
      data: data,
      loading: true,
      service: UserController.loginByMobile,
    ));
  }
}
