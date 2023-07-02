import 'package:flutter/material.dart';

class NumericalField extends StatelessWidget {
  const NumericalField({
    super.key,
    required this.label,
    required this.onChanged,
  });

  final String label;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 4),
        SizedBox(
          width: 65,
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
            style: const TextStyle(
              fontSize: 32,
            ),
            keyboardType: TextInputType.number,
            maxLength: 3,
            onChanged: onChanged
          ),
        )
      ]
    );
  }
}