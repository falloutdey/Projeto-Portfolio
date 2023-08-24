import 'package:flutter/material.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.yellow,
      height: size.height,
      width: size.width,
    );
  }
}
