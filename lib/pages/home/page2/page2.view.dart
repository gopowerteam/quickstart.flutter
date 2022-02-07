// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'page2.viewmodel.dart';

class Page2View extends ViewModelBuilderWidget<Page2ViewModel> {
  const Page2View({Key key}) : super(key: key);

  @override
  bool get reactive => true;

  @override
  bool get createNewModelOnInsert => false;

  @override
  bool get disposeViewModel => true;

  @override
  Page2ViewModel viewModelBuilder(BuildContext context) => Page2ViewModel();

  @override
  Widget builder(
    BuildContext context,
    Page2ViewModel viewModel,
    Widget child,
  ) {
    return Center(
      child: Text(viewModel.name),
    );
  }
}
