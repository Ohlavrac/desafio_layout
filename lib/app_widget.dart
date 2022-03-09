import 'package:flutter/material.dart';
import 'modules/main_page/main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Desafio Layout",
      debugShowCheckedModeBanner: false,
      initialRoute: "/main_page",
      routes: {
        "/main_page": (context) => MainPage(),
      },
    );
  }
}