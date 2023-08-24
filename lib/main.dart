import 'package:flutter/material.dart';
// import 'package:url_strategy/url_strategy.dart';
import 'package:projeto_portfolio/sections/about.dart';
import 'package:projeto_portfolio/sections/academic_info.dart';
import 'package:projeto_portfolio/sections/contacts.dart';
import 'package:projeto_portfolio/sections/knowlegdes.dart';
import 'package:projeto_portfolio/sections/projects.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: 
        SingleChildScrollView(
          child: Column(
            children: [
              About(),
              AcademicInfo(),
              Knowledges(),
              Projects(),
              Contacts()
            ],
          ),
        )
      ),
    );
  }
}
