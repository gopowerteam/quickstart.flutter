import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard implements RouteGuard {
  @override
  Future<bool> canActivate(String url, ModularRoute route) async {
    var pref = await SharedPreferences.getInstance();
    String token = pref.getString("userToken");

    if (token == null && url == '/') {
      return false;
    } else {
      return true;
    }
  }

  @override
  String get guardedRoute => '/login';
}
