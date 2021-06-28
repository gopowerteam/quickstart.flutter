// app_module.dart
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:xbt_app/pages/home/home.view.dart';
import 'package:xbt_app/pages/login/login.view.dart';
import 'package:xbt_app/pages/video/video.view.dart';
import 'package:xbt_app/store/auth.store.dart';
import 'app.widget.dart';
import 'guards/auth.guard.dart';

class AppModule extends Module {
  // 日志模块配置
  final logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2, // number of method calls to be displayed
        errorMethodCount: 8, // number of method calls if stacktrace is provided
        lineLength: 120, // width of the output
        colors: true, // Colorful log messages
        printEmojis: false, // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  );

  // 依赖注入
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => Logger(
          printer: PrettyPrinter(
              methodCount: 2, // number of method calls to be displayed
              errorMethodCount:
                  8, // number of method calls if stacktrace is provided
              lineLength: 120, // width of the output
              colors: true, // Colorful log messages
              printEmojis: false, // Print an emoji for each log message
              printTime: false // Should each log print contain a timestamp
              ),
        )),
    Bind.singleton((_) => AuthStore())
  ];

  // Provide all the routes for your module
  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (context, args) => HomeView(), guards: [AuthGuard()]),
    ChildRoute(
      '/login',
      child: (context, args) => LoginView(),
    ),
    ChildRoute(
      '/home',
      child: (context, args) => HomeView(),
    ),
    ChildRoute(
      '/video',
      child: (context, args) => VideoView(),
    ),
  ];
}
