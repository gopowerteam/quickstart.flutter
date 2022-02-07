import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/login');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    var pref = await SharedPreferences.getInstance();
    String token = pref.getString("userToken");

    if (token == null && path == '/') {
      return false;
    } else {
      return true;
    }
  }
}
