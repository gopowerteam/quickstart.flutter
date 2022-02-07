import 'package:flutter/material.dart';
import 'package:quickstart_flutter/core/http/request_service_config.dart';

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
