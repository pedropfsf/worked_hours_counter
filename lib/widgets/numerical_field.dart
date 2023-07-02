import 'package:flutter/material.dart';

class NumericalField extends StatelessWidget {
  const NumericalField({
    super.key,
    required this.label,
    required this.onChanged,
    this.maxLength = 3,
    this.width = 65,
  });

  final String label;
  final Function(String) onChanged;
  final int maxLength;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 4),
        SizedBox(
          width: width,
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            style: const TextStyle(
              fontSize: 32,
            ),
            keyboardType: TextInputType.number,
            maxLength: maxLength,
            onChanged: onChanged
          ),
        )
      ]
    );
  }
}