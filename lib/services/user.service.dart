import 'package:xbt_app/config/services/user.controller.dart';
import 'package:xbt_app/core/http/request-option.dart';
import 'package:xbt_app/core/http/net.service.dart';

class UserService {
  final net = NetService();

  Stream sendLoginVerificationCode(data) {
    return this.net.send(RequestOption(
          data: data,
          loading: true,
          service: UserController.sendLoginVerificationCode,
        ));
  }

  Stream loginByMobile(data) {
    return this.net.send(RequestOption(
          data: data,
          loading: true,
          service: UserController.loginByMobile,
        ));
  }
}
