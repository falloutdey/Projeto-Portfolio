import 'package:flutter/material.dart';
import 'package:projeto_portfolio/sections/about.dart';
import 'package:projeto_portfolio/sections/academic_info.dart';
import 'package:projeto_portfolio/sections/contacts.dart';
import 'package:projeto_portfolio/sections/knowlegdes.dart';
import 'package:projeto_portfolio/sections/projects.dart';
import 'package:projeto_portfolio/components/menuItem.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
              width: size.width * 0.8,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () {

                  }, child: Row(
                    children: [
                      Icon(),
                      Text()
                    ],
                  )),
                  TextButton(onPressed: () {

                  }, child: Row(
                        children: [Icon(), Text()],
                      )),
                  TextButton(onPressed: () {

                  }, child: Row(
                        children: [Icon(), Text()],
                      )),
                  TextButton(onPressed: () {

                  }, child: Row(
                        children: [Icon(), Text()],
                      )),
                  TextButton(onPressed: () {

                  }, child: Row(
                        children: [Icon(), Text()],
                      ))
                ],
              ),
            ),
          ),
           Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  About(key: keyAbout),
                  AcademicInfo(key: keyAcademicInfo),
                  Knowledges(key: keyKnowledges),
                  Projects(key: keyProjects),
                  Contacts(key: keyContacts),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
