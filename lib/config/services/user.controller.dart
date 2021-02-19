import 'package:flutter/material.dart';
import 'package:xbt_app/core/http/request-service-config.dart';

class UserController {
  static final service = 'client';
  static final controller = 'user';

  static final sendLoginVerificationCode = RequestServiceConfig(
    service: service,
    controller: controller,
    action: 'sendLoginVerificationCode',
    method: 'POST',
  );

  static final loginByMobile = RequestServiceConfig(
    service: service,
    controller: controller,
    action: 'loginByMobile',
    method: 'POST',
  );
}
