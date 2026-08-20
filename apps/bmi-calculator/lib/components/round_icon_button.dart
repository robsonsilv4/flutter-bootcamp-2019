import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final FaIconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF4C4F5E),
      elevation: 0,
      child: FaIcon(icon),
    );
  }
}
