import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthGuard implements RouteGuard {
  @override
  bool canActivate(String url) {
    // This is suppose to be where is do your "is logged in check"
    // however, as noted in the Modular projects issue tracker,
    // this will throw an exception when false. Instead we "jimmy rig"
    // this so that it is always true because the onGuarded is always called (?)
    // before route change (when used as a route guard). Both are needed however.
    return true;
  }

  @override
  List<GuardExecutor> get executors => [AuthExecutor()];
}

class AuthExecutor extends GuardExecutor {
  getUserToken() async {
    var pref = await SharedPreferences.getInstance();
    String token = pref.getString("userToken");

    return token;
  }

  @override
  void onGuarded(String path, {bool isActive}) async {
    if (await getUserToken() == null && path == '/') {
      Modular.to.pushReplacementNamed('/login');
    } else {
      return;
    }
  }
}
