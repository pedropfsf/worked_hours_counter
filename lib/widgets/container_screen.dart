import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({
    super.key,
    required this.children,  
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0x33673AB7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        )
      )
    );
  }
}