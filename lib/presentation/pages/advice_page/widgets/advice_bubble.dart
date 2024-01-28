import 'package:flutter/material.dart';

class AdviceBubble extends StatelessWidget {
  const AdviceBubble({required this.advice, super.key});
  final String advice;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.red,
      child: Text(advice),
    );
  }
}
