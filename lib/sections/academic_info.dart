import 'package:flutter/material.dart';

class AcademicInfo extends StatelessWidget {
  const AcademicInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue,
      height: size.height,
      width: size.width,
    );
  }
}
