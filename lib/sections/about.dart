import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: const EdgeInsets.only(bottom: 20),
        height: size.height * 0.84,
        width: size.width * 0.9,
        child: Card(
          // color: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(20.0), // Defina o raio desejado aqui
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Text("Oi"),
              ),
              Expanded(
                  flex: 2,
                  child: Center(
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage:
                          AssetImage('lib//assets//images//imagem.jpg'),
                    ),
                  )),
            ],
          ),
        ));
  }
}
