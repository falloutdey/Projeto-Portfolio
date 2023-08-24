import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey keyAbout = GlobalKey();
    GlobalKey keyAcademicInfo = GlobalKey();
    GlobalKey keyKnowledges = GlobalKey();
    GlobalKey keyProjects = GlobalKey();
    GlobalKey keyContacts = GlobalKey();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          
        ]),
    );
  }
}
