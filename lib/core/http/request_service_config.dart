import 'package:flutter/foundation.dart';

class RequestServiceConfig {
  final String controller;
  final String service;
  final String action;
  final String method;

  const RequestServiceConfig({
    @required this.controller,
    this.service,
    @required this.action,
    @required this.method,
  });
}
