import 'package:flutter/material.dart';

class NumericalField extends StatelessWidget {
  const NumericalField({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(label),
        const SizedBox(height: 4),
        const SizedBox(
          width: 65,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            style: TextStyle(
              fontSize: 32,
            ),
            keyboardType: TextInputType.number,
            maxLength: 2,
          ),
        )
      ]
    );
  }
}