import 'package:flutter/material.dart';

class mainContainer extends StatelessWidget {
  const mainContainer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.only(top: 15, bottom: 20),
        height: size.height * 0.84,
        width: size.width * 0.9,
        child: Card(
          color: Colors.black,
        ));
  }
}
