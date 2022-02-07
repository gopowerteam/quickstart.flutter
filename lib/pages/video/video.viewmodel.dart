// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:permissions_plugin/permissions_plugin.dart';

class VideoViewModel extends ChangeNotifier {
  VideoViewModel() {
    checkPermissions();
  }

  void checkPermissions() async {
    Map<Permission, PermissionState> permission =
        await PermissionsPlugin.requestPermissions([
      Permission.RECORD_AUDIO,
      Permission.CAMERA,
    ]);

    if (permission.containsKey('')) {
      //TODO
    }

    // print(permission);
  }
}
