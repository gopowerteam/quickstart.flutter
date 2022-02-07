// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:quickstart_flutter/store/auth.store.dart';

class Page3ViewModel extends ChangeNotifier {
  final authStore = Modular.get<AuthStore>();

  String name = "page3";
}
