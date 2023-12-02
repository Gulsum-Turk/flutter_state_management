import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:state_management/feature/onboard/onboard_model.dart';
import 'package:state_management/feature/page_padding/padding.dart';

class OnBoardView extends StatefulWidget {
  const OnBoardView({super.key});

  @override
  State<OnBoardView> createState() => _OnBoardViewState();
}

class _OnBoardViewState extends State<OnBoardView> with SingleTickerProviderStateMixin{
  final String _SkipTitle = 'Skip';
  late final TabController _tabController;
  @override
  @override
  void initState() { 
    super.initState();
    _tabController=TabController(length: OnboardModels.onBoardItems.length, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.chevron_left_outlined, color: Colors.black)),
        actions: [TextButton(onPressed: () {}, child: Text(_SkipTitle))],
        backgroundColor: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const PagePadding.all(),
        child: Column(
          children: [
           Expanded(
             child: PageView.builder(
              itemCount: OnboardModels.onBoardItems.length,
              itemBuilder: (context, index){
                return Column(
                  children: [
                    Text('egfg'),
                    Text('gegeag'),
                    Image.asset('name'),
                  ],
                );
           
              }),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              TabPageSelector(
                //sayfa geçişlerini gösteren yuvarlaklar widgetı
                controller: _tabController,
              ),
              NextButton()
            ],)
      
          ],
        ),
      )
    );
  }
}

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Text('next'),
      onPressed: (){});
  }
}
