import 'package:flutter/material.dart';
import 'package:projeto_portfolio/sections/about.dart';
import 'package:projeto_portfolio/sections/academic_info.dart';
import 'package:projeto_portfolio/sections/knowlegdes.dart';

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
          Expanded(
            flex: 1,
            child: Container(
              width: size.width * 0.6,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.black
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(),
                  ),
                  IconButton(
                    onPressed: () {

                    },
                    icon: Icon(),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  About(),
                  AcademicInfo(),
                  Knowledges(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
