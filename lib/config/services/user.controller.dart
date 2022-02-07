import 'package:quickstart_flutter/core/http/request_service_config.dart';

class UserController {
  static const service = 'client';
  static const controller = 'user';

  static const sendLoginVerificationCode = RequestServiceConfig(
    service: service,
    controller: controller,
    action: 'sendLoginVerificationCode',
    method: 'POST',
  );

  static const loginByMobile = RequestServiceConfig(
    service: service,
    controller: controller,
    action: 'loginByMobile',
    method: 'POST',
  );
}
