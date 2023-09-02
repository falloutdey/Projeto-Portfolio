import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({Key? key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.only(bottom: 20),
      height: size.height * 0.83,
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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              final Uri url = Uri.parse('https://mail.google.com/mail/u/1/#inbox?compose=CllgCJZWPQdBtMhmxWpJQXCvjwXPStPBkKnrdLZqslWczBPwCSQXqFlfpwVVNZTktczhMfzjtmg');
                              launchUrl(url);
                            },
                            child: Text("Email",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                              fixedSize: MaterialStateProperty.all(
                                  Size(90, 40)), // Defina o tamanho desejado
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              final Uri url = Uri.parse(
                                  'https://github.com/falloutdey');
                              launchUrl(url);
                            },
                            child: Text("Github",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              fixedSize: MaterialStateProperty.all(
                                  Size(90, 40)), // Defina o tamanho desejado
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              final Uri url = Uri.parse(
                                  'https://www.linkedin.com/in/deydson-costa-676aa1244');
                              launchUrl(url);
                            },
                            child: Text("LinkedIn",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue),
                              fixedSize: MaterialStateProperty.all(
                                  Size(90, 40)), // Defina o tamanho desejado
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              final Uri url = Uri.parse(
                                  'https://twitter.com/printpyboy');
                              launchUrl(url);
                            },
                            child: Text("Twitter",
                                style: TextStyle(color: Colors.white)),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.blue[900]),
                              fixedSize: MaterialStateProperty.all(
                                  Size(90, 40)), // Defina o tamanho desejado
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: CircleAvatar(
                  radius: 170,
                  backgroundImage: AssetImage('lib/assets/images/imagem.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
