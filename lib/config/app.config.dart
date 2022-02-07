import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  // 加载环境配置信息
  static load({env = "development"}) async {
    await dotenv.load(fileName: '.env.$env');
  }

  // 环境配置参数
  static String env = dotenv.env['ENV'];
  static String test = dotenv.env['TEST'];
  static String server = dotenv.env['SERVER'];
}
