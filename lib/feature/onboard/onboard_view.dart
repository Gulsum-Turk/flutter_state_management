import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:state_management/feature/onboard/onboard_model.dart';
import 'package:state_management/feature/page_padding/padding.dart';
import 'package:state_management/feature/product/tab_controller.dart';
import 'package:state_management/feature/product/widgetOnboardcard.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> {
  final String _SkipTitle = 'Skip';
  final String _StartButton = 'Start';
  final String _NextButton = 'Next';
  int _selectedIndex = 0;

  void _increamendAndChange() {
    if (_isLastPage) {
      return;
    }
    _increamentSelectedPage();
  }
  bool get _isFirstPage => _selectedIndex==0;
  bool get _isLastPage =>
      OnboardModels.onBoardItems.length - 1 == _selectedIndex;

  // tab controllerı yönetmek için
  void _increamentSelectedPage() {
    setState(() {
      _selectedIndex++;
    });
  }

  //

  @override
  Widget build(BuildContext context) {
    print(_selectedIndex);
    return Scaffold(
        appBar: _appBar(),
        body: Padding(
          padding: const PagePadding.all(),
          child: Column(
            children: [
              Expanded(
                child: _pageViewItems(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabIndicator(
                    selectedIndex: _selectedIndex,
                  ),
                  nextButton(),
                ],
              )
            ],
          ),
        ));
  }

  FloatingActionButton nextButton() {
    return FloatingActionButton(
        child: Text(_isLastPage ? _StartButton : _NextButton),
        onPressed: () {
          _increamendAndChange();
        });
  }

  AppBar _appBar() {
    return AppBar(
      leading: _isFirstPage?null:IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left_outlined, color: Colors.black)),
      actions: [TextButton(onPressed: () {}, child: Text(_SkipTitle))],
      backgroundColor: Colors.transparent,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  PageView _pageViewItems() {
    return PageView.builder(
        itemCount: OnboardModels.onBoardItems.length,
        itemBuilder: (context, index) {
          return OnBoardCard(model: OnboardModels.onBoardItems[index]);
        });
  }
}
