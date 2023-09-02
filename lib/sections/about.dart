import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      height: size.height * 0.84,
      width: size.width * 0.9,
      child: Card(
        shadowColor: Colors.black,
        color: Colors.grey[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 70, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Quem sou eu?",
                      style: TextStyle(
                        fontSize: 50,
                        color: Colors.purple[900],
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Text(
                        "Sou estudante de Sistemas de Informação na Universidade Federal do Pará. Desenvolvo utilizando tecnologias tanto do Back-end, quanto do Front-end. Meu foco principal se dá no desenvolvimento de aplicações Web e Mobile.",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: CircleAvatar(
                  radius: 200,
                  backgroundImage:
                      AssetImage('lib//assets//images//imagem.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
