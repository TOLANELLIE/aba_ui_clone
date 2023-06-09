import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ServiceDiscTag extends StatelessWidget {
  ServiceDiscTag({required this.text, this.discColor, super.key});

  final String text;
  Color? discColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(10),
      color: discColor,
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
