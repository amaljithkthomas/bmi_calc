import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  void Function()? operation;

  RoundIconButton({required this.icon, required this.operation});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: operation,
      fillColor: Color(0xFF4C4F5E),
      elevation: 6.0,
      shape: CircleBorder(),
      constraints: const BoxConstraints(minWidth: 56.0, minHeight: 56.0),
      child: Icon(icon),
    );
  }
}
