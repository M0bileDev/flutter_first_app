import 'package:flutter/material.dart';

final beginAlignment = Alignment.topLeft;
final endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  //Standard way of passing key to parent's constructor class
  // const GradientContainer({key}) : super(key:key);

  //Same as ablove but shorter
  const GradientContainer(this.colorsOutput, {super.key});

  //there could be multiple constructor functions
  //constructor function, replacement for easy to use constructors
  GradientContainer.purple({super.key})
      : colorsOutput = [Colors.deepPurple, Colors.purple];

  final List<Color> colorsOutput;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colorsOutput, begin: beginAlignment, end: endAlignment),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-1.png',
          scale: 2.5,
        ),
      ),
    );
  }
}
