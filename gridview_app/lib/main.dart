import 'package:flutter/material.dart';
import 'package:gridview_app/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Lato',
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'Lato',
            fontSize: 18.0,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        )
      ),
      home: const Home(),
    );
  }
}
