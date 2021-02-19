// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stacked/stacked.dart';
import 'page3.viewmodel.dart';

class Page3View extends ViewModelBuilderWidget<Page3ViewModel> {
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
    Page3ViewModel model,
    Widget child,
  ) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Modular.to.pushNamed('video');
        },
        child: Text("video"),
      ),
    );
  }
}
