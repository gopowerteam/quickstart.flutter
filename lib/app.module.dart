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

class AppModule extends MainModule {
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
  List<Bind> get binds => [
        Bind((_) => logger),
        // stores
        Bind((_) => AuthStore(), singleton: true),
      ];

  // Provide all the routes for your module
  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          '/',
          child: (context, args) => HomeView(),
          guards: [AuthGuard()],
        ),
        ModularRouter(
          '/login',
          child: (context, args) => LoginView(),
        ),
        ModularRouter(
          '/home',
          child: (context, args) => HomeView(),
        ),
        ModularRouter(
          '/video',
          child: (context, args) => VideoView(),
        ),
      ];

  // Provide the root widget associated with your module
  // In this case, it's the widget you created in the first step
  @override
  Widget get bootstrap => AppWidget();
}
