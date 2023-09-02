import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:projeto_portfolio/sections/home.dart';

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
          pageBuilder: (context, state) => const MaterialPage(child: Intro())),
      GoRoute(
          path: '/portfolio',
          pageBuilder: (context, state) =>
              MaterialPage(child: HomePage()))
    ]);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: router.routeInformationParser,
      routeInformationProvider: router.routeInformationProvider,
      routerDelegate: router.routerDelegate,
    );
  }
}

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  bool mousePassado = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            opacity: 0.7,
            image: AssetImage('lib/assets/images/textura_triangular.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxHeight: size.height * 0.4),
            // Set a maximum height for the column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Olá, eu sou Deydson Costa",
                  style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold, fontFamily: 'Comfortaa'),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                ),
                TextButton(
                  onHover: (value) => setState(() {
                    mousePassado = value;
                  }),
                  onPressed: () {
                    GoRouter.of(context).push('/portfolio');
                  },
                  child: Text(
                    "Vamos começar!",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(160, 50)),
                    backgroundColor: MaterialStateProperty.all(
                        mousePassado ? Colors.purple[900] : Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
