// View
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:stacked/stacked.dart';
import 'package:xbt_app/store/auth.store.dart';
import 'page1.viewmodel.dart';

class Page1View extends ViewModelBuilderWidget<Page1ViewModel> {
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
    Page1ViewModel model,
    Widget child,
  ) {
    return Center(
      child: Column(children: [
        ElevatedButton(
          child: Text('login'),
          onPressed: model.login,
        ),
        Observer(
            builder: (_) => Text(
                  '${model.authStore.token}',
                  style: const TextStyle(fontSize: 20),
                )),
        ElevatedButton(
          child: Text('ccc'),
          onPressed: model.test,
        ),
      ]),
    );
  }
}
