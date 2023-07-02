import 'package:flutter/material.dart';

class MoneyField extends StatelessWidget {
  const MoneyField({
    super.key,
    required this.label,
    required this.onChanged,
  });

  final String label;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              prefixIcon: const Icon(
                Icons.attach_money,
                color: Colors.green,
                size: 40,
              ),
              labelText: label,
              labelStyle: const TextStyle(fontSize: 16),
            ),
            style: const TextStyle(fontSize: 32),
            textAlign: TextAlign.end,
            keyboardType: TextInputType.number,
            onChanged: onChanged,
          ),
        )
      ]
    );
  }
}