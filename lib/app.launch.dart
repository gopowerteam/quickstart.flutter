import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:dart_json_mapper_flutter/dart_json_mapper_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:quickstart_flutter/app.widget.dart';
import 'app.module.dart';
import 'config/app.config.dart';
import 'app.launch.reflectable.dart' as reflectable;

void main({String environment}) async {
  // 加载环境配置文件
  await AppConfig.load(env: environment);
  // 加载序列化配置
  reflectable.initializeReflectable();
  // 安装适配器
  JsonMapper().useAdapter(flutterAdapter);
  // 启动APP
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
