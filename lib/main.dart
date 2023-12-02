import 'package:flutter/material.dart';
import 'package:state_management/feature/onboard/onboard_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: OnBoardView(),
    );
  }
}
