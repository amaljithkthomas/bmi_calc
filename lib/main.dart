import 'package:bmi_calculator/homeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
        primaryColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Color(0xFF0A0E21),
          centerTitle: true,
              
        )
        
        
      ),
      home: HomeScreen(),
    );
  }
}
