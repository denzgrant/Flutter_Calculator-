import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calculator/calculator_page.dart';

void main() => runApp(CalculatorApp());

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //disables landscape mode
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: ThemeData.dark(),
      home: CalculatorPage(),
    );
  }
}
