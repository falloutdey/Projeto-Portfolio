import 'package:flutter/material.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        height: size.height * 0.84,
        width: size.width * 0.9,
        child: Card(
          color: Colors.grey[400],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child:ExpansionTile(
                      backgroundColor: Colors.grey[300],
                      title: const Text("Tecnologias"),
                    ),
                  ),
              VerticalDivider(
                width: 20,
                color: Colors.black,
              ),
              Expanded(
                flex: 2,
                child: ExpansionTile(
                    title: Text("Soft Skills"),
                  ),
                ),
            ],
          ),
        ));
  }
}
