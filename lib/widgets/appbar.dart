import 'package:aba_ui_clone/colors/color_theme.dart';
import 'package:flutter/material.dart';

class AppBars extends StatelessWidget {
  const AppBars(
      {required this.title, required this.leadingicon, this.action, super.key});

  final String title;
  final IconData leadingicon;
  final IconData? action;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbar,
        title: Text(title),
        leading: Icon(leadingicon),
        automaticallyImplyLeading: false,
        actions: [
          const SizedBox(
            width: 10,
          ),
          Icon(action),
          const SizedBox(
            width: 10,
          ),
          Icon(action),
          const SizedBox(
            width: 10,
          ),
          Icon(action),
        ],
      ),
    );
  }
}
