// View
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'home.viewmodel.dart';

class HomeView extends ViewModelBuilderWidget<HomeViewModel> {
  const HomeView({Key key}) : super(key: key);

  @override
  bool get reactive => true;

  @override
  bool get createNewModelOnInsert => false;

  @override
  bool get disposeViewModel => true;

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget child,
  ) {
    return Scaffold(
      body: viewModel.pageList[viewModel.currentIndex]["widget"],
      bottomNavigationBar: BottomNavigationBar(
        items: viewModel.pageList
            .map((page) => BottomNavigationBarItem(
                icon: page['icon'], label: page['title']))
            .toList(),
        currentIndex: viewModel.currentIndex,
        fixedColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: viewModel.onChangePage,
      ),
    );
  }
}
