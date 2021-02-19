import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppConfig {
  // 加载环境配置信息
  static load({env: "development"}) async {
    await DotEnv().load('.env.$env');
  }

  // 环境配置参数
  static String env = DotEnv().env['ENV'];
  static String test = DotEnv().env['TEST'];
  static String server = DotEnv().env['SERVER'];
}
