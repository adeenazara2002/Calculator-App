import 'package:calculator_app/calculator_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/Calculator_App/calculator.dart';


void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home:const CalculatorScreen(),
    );
  }
}
