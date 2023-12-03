


import 'package:flutter/material.dart';
import 'package:state_management/feature/onboard/onboard_model.dart';

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({super.key, required this.model});
  final OnboardModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: [
                    Text(model.title, style: Theme.of(context).textTheme.headlineMedium,),
                    Text(model.description, style: Theme.of(context).textTheme.labelLarge),
                    Image.asset(model.imageWithPath),
                  ],
                );
  }
}