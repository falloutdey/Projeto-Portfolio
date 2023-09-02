import 'package:flutter/material.dart';
import 'package:projeto_portfolio/sections/about.dart';
import 'package:projeto_portfolio/sections/knowlegdes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<GlobalKey> keys = [
      GlobalKey(),
      GlobalKey(),
    ];

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        children: [
          Menu(keys: keys),
          Expanded(
            flex: 5,
            child: ScrollConfiguration(
              behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    About(key: keys[0]),
                    Knowledges(key: keys[1]),
                  ],
                ),
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
  List<bool> categoriaSelecionada = <bool>[true, false];
  bool ehSelecionado = false;

  @override
  Widget build(BuildContext context) {
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
            Scrollable.ensureVisible(
              widget.keys[index].currentContext!,
              duration: const Duration(milliseconds: 100),
            );
          },
          borderColor: Colors.black,
          selectedBorderColor: Colors.purple,
          selectedColor: Colors.purple[900],
          fillColor: Colors.purple[900], 
          borderRadius: BorderRadius.circular(20),

          children: [
            Container(
              width: 220,
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
                        Text("Sobre Mim", style: TextStyle(
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
                  Icon(Icons.menu_book,  color:
                          categoriaSelecionada[1] ? Colors.white : Colors.black),
                          SizedBox(height: 10),
                  Text("Conhecimentos e Habilidades", style: TextStyle(
                          color: categoriaSelecionada[1]
                              ? Colors.white
                              : Colors.black))
                ]),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
