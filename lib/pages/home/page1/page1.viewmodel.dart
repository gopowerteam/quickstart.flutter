// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:quickstart_flutter/store/auth.store.dart';

class Page1ViewModel extends ChangeNotifier {
  final logger = Modular.get<Logger>();
  final authStore = Modular.get<AuthStore>();

  String name = "";

  Page1ViewModel() {
    name = authStore.token;
    notifyListeners();
  }

  login() async {
    final preferences = await SharedPreferences.getInstance();
    preferences.clear();
    Modular.to.pushNamed('login');
  }

  test() {
    // authStore.updateUser(userId: userStore.userId + "1", userName: "333");
  }
}
