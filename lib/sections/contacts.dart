import 'package:flutter/material.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        height: size.height * 0.84,
        width: size.width * 0.9,
        child: Card(
          color: Colors.purple[400],
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0),
          ),
        )
      );
  }
}
