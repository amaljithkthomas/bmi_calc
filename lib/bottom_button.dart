import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String buttonName;
  final void Function() onTap;

  BottomButton({required this.buttonName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: containerColour,
        width: double.infinity,
        height: containerHeight,
        margin: const EdgeInsets.only(top: 15),
        child: Center(
            child: Text(
              buttonName,
              style: bottomContainerTextStyle,
            )),
      ),
    );
  }
}