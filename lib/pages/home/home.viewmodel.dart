// ViewModel
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'page1/page1.view.dart';
import 'page2/page2.view.dart';
import 'page3/page3.view.dart';

class HomeViewModel extends ChangeNotifier {
  int currentIndex = 0;

  List<Map<String, dynamic>> pageList = [
    {
      "title": 'page1',
      "icon": Icon(Icons.panorama_fish_eye),
      "widget": Page1View(),
    },
    {
      "title": 'page2',
      "icon": Icon(Icons.school),
      "widget": Page2View(),
    },
    {
      "title": 'page3',
      "icon": Icon(Icons.people),
      "widget": Page3View(),
    }
  ];

  void onChangePage(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
