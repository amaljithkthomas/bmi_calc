import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';



class CardGenderSelection extends StatelessWidget {
  final IconData genderIcon;
  final String gender;

  CardGenderSelection({
    required this.genderIcon,
    required this.gender,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: iconSize,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: const TextStyle(
            fontSize: fontSize,
            color: textColour,
          ),
        )
      ],
    );
  }
}