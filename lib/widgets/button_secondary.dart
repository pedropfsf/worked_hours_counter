import 'package:flutter/material.dart';

class ButtonSecondary extends StatelessWidget {
  const ButtonSecondary({
    super.key,
    required this.label,
    required this.onPressed,  
  });

  final String label;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        padding: MaterialStatePropertyAll(EdgeInsets.all(16)),
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 24,
          color: Colors.white,
        )  
      ),
    );
  }
}