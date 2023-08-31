import 'package:flutter/material.dart';
import 'package:projeto_portfolio/sections/about.dart';
import 'package:projeto_portfolio/sections/academic_info.dart';
import 'package:projeto_portfolio/sections/contacts.dart';
import 'package:projeto_portfolio/sections/knowlegdes.dart';
import 'package:projeto_portfolio/sections/projects.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<GlobalKey> keys = [
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
      GlobalKey(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Menu(keys: keys),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  About(key: keys[0]),
                  AcademicInfo(key: keys[1]),
                  Knowledges(key: keys[2]),
                  Projects(key: keys[3]),
                  Contacts(key: keys[4]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key, required this.keys});

  final List<GlobalKey<State<StatefulWidget>>> keys;

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<bool> categoriaSelecionada = <bool>[true, false, false, false, false];
  bool ehSelecionado = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      flex: 1,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        ToggleButtons(
          isSelected: categoriaSelecionada,
          onPressed: (int index) {
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < categoriaSelecionada.length;
                  buttonIndex++) {
                categoriaSelecionada[buttonIndex] = buttonIndex == index;
              }
            });

            // Seção para a rolagem para os elementos correspondentes
            Scrollable.ensureVisible(
              widget.keys[index].currentContext!,
              duration: const Duration(milliseconds: 300),
            );
          },
          borderColor: Colors.black,
          selectedBorderColor: Colors.purple,
          selectedColor: Colors.purple[300], // Cor para botões selecionados
          fillColor:
              Colors.purple[300], // Cor de preenchimento quando pressionado
          color: Colors.black, // Cor para botões não selecionados
          borderRadius: BorderRadius.circular(20),

          children: [
            Container(
              width: 120,
              height: 70,
              alignment: AlignmentDirectional.center,
              child: Padding(    
                padding: const EdgeInsets.all(8.0),
                child:
                    Column(
                      children: [
                        Icon(Icons.account_circle, 
                        color: categoriaSelecionada[0]? Colors.white : Colors.black),
                        SizedBox(height: 10),
                        Text("Sobre", style: TextStyle(
                          color: categoriaSelecionada[0] 
                          ? Colors.white 
                          : Colors.black))
                    ]),
              ),
            ),
            Container(
              width: 220,
              height: 70,
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Icon(Icons.school,  color:
                          categoriaSelecionada[1] ? Colors.white : Colors.black),
                          SizedBox(height: 10),
                  Text("Informações Acadêmicas", style: TextStyle(
                          color: categoriaSelecionada[1] 
                          ? Colors.white 
                          : Colors.black))
                ]),
              ),
            ),
            Container(
              width: 220,
              height: 70,
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Icon(Icons.menu_book,  color:
                          categoriaSelecionada[2] ? Colors.white : Colors.black),
                          SizedBox(height: 10),
                  Text("Conhecimentos e Habilidades", style: TextStyle(
                          color: categoriaSelecionada[2]
                              ? Colors.white
                              : Colors.black))
                ]),
              ),
            ),
            Container(
              width: 120,
              height: 70,
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [Icon(Icons.code,  color:
                          categoriaSelecionada[3] ? Colors.white : Colors.black), 
                          SizedBox(height: 10),
                          Text("Projetos", style: TextStyle(
                          color: categoriaSelecionada[3]
                              ? Colors.white
                              : Colors.black))]),
              ),
            ),
            Container(
              width: 120,
              height: 70,
              alignment: AlignmentDirectional.center,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [Icon(Icons.phone,  color:
                          categoriaSelecionada[4] ? Colors.white : Colors.black), 
                          SizedBox(height: 10),
                          Text("Contatos", style: TextStyle(
                          color: categoriaSelecionada[4]
                              ? Colors.white
                              : Colors.black))]),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
