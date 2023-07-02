import 'package:flutter/material.dart';

class ButtonPrimary extends StatelessWidget {
  const ButtonPrimary({
    super.key,
    required this.label,
    required this.onPressed,  
  });

  final String label;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.deepPurple),
        padding: MaterialStatePropertyAll(EdgeInsets.all(16))
      ),
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 32,
        )  
      ),
    );
  }
}