import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    required this.title,
    required this.onTap,
    super.key,
  });

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomContainerColor,
        width: double.infinity,
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.only(bottom: 20),
        child: Center(
          child: Text(
            title,
            style: kLargeButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
