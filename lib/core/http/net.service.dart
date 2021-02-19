import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:rxdart/subjects.dart';
import 'package:xbt_app/config/app.config.dart';
import 'package:xbt_app/core/http/request-option.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as pretty;
import 'package:xbt_app/core/http/request-service-config.dart';
import 'package:xbt_app/core/model.dart';

class NetService {
  Dio dio;
  Logger logger = Logger();
  // 请求头部信息
  // private headers = new HttpHeaders()
  // constructor(private http: HttpClient
  NetService() {
    this.dio = createHttpInstance();
    dio.interceptors.add(pretty.PrettyDioLogger());
  }

  Dio createHttpInstance() {
    BaseOptions options = new BaseOptions(
      baseUrl: "https://www.xx.com/api",
      connectTimeout: 5000,
      receiveTimeout: 3000,
    );

    final dio = new Dio(options);
    requestInterceptors(dio);
    return dio;
  }

  requestInterceptors(Dio dio) {
    final onResponse = (Response response) async {
      return response;
    };

    final onError = (DioError error) async {
      return error;
    };

    dio.interceptors
        .add(InterceptorsWrapper(onResponse: onResponse, onError: onError));

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
    final onSuccess = (data) {
      // TODO:处理分页
      final model = T != dynamic ? Model.fromJson(data) : data;
      subject.add(model);
    };

    // 处理异常
    final onCatchError = (error) {
      handleError(error);
      subject.addError(error);
    };

    // 通讯结束
    final onComplete = () {
      subject.close();
      hideLoading();
    };

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
    return options.headers ?? Map();
  }
}

class PrettyDioLogger {}
