// View
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'video.viewmodel.dart';

class VideoView extends ViewModelBuilderWidget<VideoViewModel> {
  const VideoView({Key key}) : super(key: key);

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
    VideoViewModel viewModel,
    Widget child,
  ) {
    return const Scaffold(
      body: Center(
        child: Text('122'),
      ),
    );
  }
}
