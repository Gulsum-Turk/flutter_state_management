import 'package:flutter/material.dart';
import 'package:state_management/feature/onboard/onboard_model.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator({super.key, required this.selectedIndex});
    final int selectedIndex;

  @override
  State<TabIndicator> createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>with SingleTickerProviderStateMixin  {
  late final TabController _tabController;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    // alt widgetta olan değşikliği üst widgetın alfılamasını sağlar
    super.didUpdateWidget(oldWidget);
    if(oldWidget.selectedIndex != widget.selectedIndex){
      _tabController.animateTo(widget.selectedIndex);
    }
  }
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: OnboardModels.onBoardItems.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
       //sayfa geçişlerini gösteren yuvarlaklar widgetı
       controller: _tabController);
  }
}