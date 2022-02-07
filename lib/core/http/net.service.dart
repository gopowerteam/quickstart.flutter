import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/subjects.dart';
import 'package:quickstart_flutter/config/app.config.dart';
import 'package:quickstart_flutter/core/http/request_option.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as pretty;
import 'package:quickstart_flutter/core/http/request_service_config.dart';
import 'package:quickstart_flutter/core/model.dart';

class NetService {
  Dio dio;
  Logger logger = Logger();
  // 请求头部信息
  // private headers = new HttpHeaders()
  // constructor(private http: HttpClient
  NetService() {
    dio = createHttpInstance();
    dio.interceptors.add(pretty.PrettyDioLogger());
  }

  Dio createHttpInstance() {
    BaseOptions options = BaseOptions(
      baseUrl: "https://www.xx.com/api",
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );

    final dio = Dio(options);
    requestInterceptors(dio);
    return dio;
  }

  requestInterceptors(Dio dio) {
    onRequest(RequestOptions options, RequestInterceptorHandler handler) {
      return handler.next(options);
    }

    onResponse(Response response, ResponseInterceptorHandler handler) async {
      return handler.next(response);
    }

    onError(DioError error, ErrorInterceptorHandler handler) async {
      return handler.next(error);
    }

    dio.interceptors.add(InterceptorsWrapper(
        onRequest: onRequest, onResponse: onResponse, onError: onError));

    return dio;
  }

  Stream<T> send<T>(RequestOption options) {
    // 请求流控制器
    final Subject subject = PublishSubject();
    // 请求信息
    String requestUrl = generateRequestUrl(options.service, options.append);
    String requestMethod = options.service.method;
    Map<String, String> requestHeaders = generateRequestHeader(options);
    // 发送请求
    Function hideLoading = options.loading ? BotToast.showLoading() : () => {};

    Options requestionOption = Options(
      method: requestMethod,
      headers: requestHeaders,
      responseType: ResponseType.json,
    );

    // 通讯成功
    onSuccess(data) {
      final model = T != dynamic ? Model.fromJson(data) : data;
      subject.add(model);
    }

    // 处理异常
    onCatchError(error) {
      handleError(error);
      subject.addError(error);
    }

    // 通讯结束
    onComplete() {
      subject.close();
      hideLoading();
    }

    // 开始请求
    dio
        .request(requestUrl, data: options.data, options: requestionOption)
        .then((Response response) => onSuccess(response.data))
        .catchError(onCatchError)
        .whenComplete(onComplete);

    return subject.stream;
  }

  handleError(DioError error) {
    switch (error.response.statusCode) {
      case 400:
        final data = error.response.data;
        BotToast.showText(text: data["message"]);
        break;
      default:
    }
  }

  // 生成URL地址
  String generateRequestUrl(RequestServiceConfig service, append) {
    logger.d(service.service);
    return [
      AppConfig.server,
      service.service,
      service.controller,
      service.action
    ].where((x) => x != "" && x != null).join('/');
  }

  // 生成
  Map<String, String> generateRequestHeader(RequestOption options) {
    return options.headers ?? {};
  }
}

class PrettyDioLogger {}
