// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:permission_handler/permission_handler.dart';

class VideoViewModel extends ChangeNotifier {
  VideoViewModel() {
    checkPermissions();
  }

  void checkPermissions() async {
    if (await Permission.camera.status.isGranted == false) {
      Permission.camera.request();
    }

    if (await Permission.microphone.status.isGranted == false) {
      Permission.microphone.request();
    }

    // print(permission);
  }
}
