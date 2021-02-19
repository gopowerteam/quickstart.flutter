// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'video.viewmodel.dart';

class VideoView extends ViewModelBuilderWidget<VideoViewModel> {
  @override
  bool get reactive => true;

  @override
  bool get createNewModelOnInsert => false;

  @override
  bool get disposeViewModel => true;

  @override
  VideoViewModel viewModelBuilder(BuildContext context) => VideoViewModel();

  @override
  Widget builder(
    BuildContext context,
    VideoViewModel model,
    Widget child,
  ) {
    return Scaffold(
      body: Center(
        child: Text('122'),
      ),
    );
  }
}
