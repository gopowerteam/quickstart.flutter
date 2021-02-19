import 'package:flutter/foundation.dart';
import 'package:xbt_app/core/http/request-service-config.dart';

class RequestOption {
  final Map<String, dynamic> data;
  final RequestServiceConfig service;
  final List<String> append;
  final Map<String, String> headers;
  final bool loading;

  const RequestOption({
    @required this.data,
    @required this.service,
    this.append,
    this.headers,
    this.loading = false,
  });
}
