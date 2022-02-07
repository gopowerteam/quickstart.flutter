// View
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stacked/stacked.dart';
import 'page3.viewmodel.dart';

class Page3View extends ViewModelBuilderWidget<Page3ViewModel> {
  const Page3View({Key key}) : super(key: key);

  @override
  bool get reactive => true;

  @override
  bool get createNewModelOnInsert => false;

  @override
  bool get disposeViewModel => true;

  @override
  Page3ViewModel viewModelBuilder(BuildContext context) => Page3ViewModel();

  @override
  Widget builder(
    BuildContext context,
    Page3ViewModel viewModel,
    Widget child,
  ) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Modular.to.pushNamed('video');
        },
        child: const Text("video"),
      ),
    );
  }
}
