import 'package:desafio_layout/change_theme.dart';
import 'package:flutter/material.dart';
import 'modules/main_page/main_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ChangeTheme myTheme = ChangeTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: myTheme.currentTheme(),
        title: "Desafio Layout",
        debugShowCheckedModeBanner: false,
        initialRoute: "/main_page",
        routes: {
          "/main_page": (context) => const MainPage(),
        },
    );
  }
}