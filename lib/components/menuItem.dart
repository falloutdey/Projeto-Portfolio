import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final GlobalKey key;

  MenuItem({required this.icon, required this.text, required this.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await Scrollable.ensureVisible(key.currentContext!,
        duration: const Duration(milliseconds: 600)
        );
      },
      style: ButtonStyle(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          Text(text),
        ],
      ),
    );
  }
}
