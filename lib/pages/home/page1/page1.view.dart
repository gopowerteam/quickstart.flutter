// View
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:stacked/stacked.dart';
import 'page1.viewmodel.dart';

class Page1View extends ViewModelBuilderWidget<Page1ViewModel> {
  const Page1View({Key key}) : super(key: key);

  @override
  bool get reactive => true;

  @override
  bool get createNewModelOnInsert => false;

  @override
  bool get disposeViewModel => true;

  @override
  Page1ViewModel viewModelBuilder(BuildContext context) => Page1ViewModel();

  @override
  Widget builder(
    BuildContext context,
    Page1ViewModel viewModel,
    Widget child,
  ) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          child: const Text('login'),
          onPressed: viewModel.login,
        ),
        Observer(
            builder: (_) => Text(
                  viewModel.authStore.token,
                  style: const TextStyle(fontSize: 20),
                )),
        ElevatedButton(
          child: const Text('ccc'),
          onPressed: viewModel.test,
        ),
      ]),
    );
  }
}
