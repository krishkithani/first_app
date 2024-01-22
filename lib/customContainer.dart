import 'package:flutter/material.dart';

import 'package:first_app/DiceRoller.dart';


const startAllignment = Alignment.topLeft;
const endAllignment = Alignment.bottomRight;

class CustomContainer extends StatelessWidget {
  const CustomContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: colors, begin: startAllignment, end: endAllignment),
        ),
        child: const Center(
          child:DiceRoller(),
        ),
    );
  }
}