import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:projeto_portfolio/sections/about.dart';
import 'package:projeto_portfolio/sections/academic_info.dart';
import 'package:projeto_portfolio/sections/contacts.dart';
import 'package:projeto_portfolio/sections/home.dart';
import 'package:projeto_portfolio/sections/knowlegdes.dart';
import 'package:projeto_portfolio/sections/projects.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(initialLocation: '/', routes: [
      GoRoute(
          path: '/',
          pageBuilder: (context, state) =>
              const MaterialPage(child: HomePage()))
    ]);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}


// SingleChildScrollView(
//         child: Column(
//           children: [
//             About(),
//             AcademicInfo(),
//             Knowledges(),
//             Projects(),
//             Contacts()
//           ],
//         ),
//       )