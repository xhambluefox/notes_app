import 'package:flutter/material.dart';

import 'Const/ColorsConst.dart';
import 'Views/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(),

      theme: ThemeData(
        scaffoldBackgroundColor: buttonColor,
        fontFamily: 'Poppins',


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


