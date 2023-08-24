import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.pink,
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              height: size.height,
              width: size.width * 0.6,
              color: Colors.white,
            )
          ),
          Expanded(
            flex: 4,
            child: Container(
                height: size.height,
                width: size.width,
                color: Colors.black,
              ),
          ),
        ],
      ),
    );
  }
}