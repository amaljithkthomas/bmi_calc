import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  Widget? cardChild;
  final void Function()? onTapped;
  final void Function()? onDoubleTapped;

  ReusableCard({required this.colour, this.cardChild,this.onTapped,this.onDoubleTapped,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      onDoubleTap: onDoubleTapped,
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
