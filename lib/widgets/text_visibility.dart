import 'package:flutter/material.dart';

class TextVisibility extends StatelessWidget {
  const TextVisibility({
    super.key,
    required this.visible,
    required this.text,
    required this.color,
  });

  final bool visible;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Column(
        children: [
          const SizedBox(height: 48),
          Text(
            text,
            style: TextStyle(
              fontSize: 32,
              color: color,
            )
          ),
        ]
      )
    );
  }
}