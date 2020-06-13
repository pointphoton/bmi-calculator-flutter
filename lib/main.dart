import 'package:bmi_calculator/page_input.dart';
import 'package:flutter/material.dart';
import 'page_input.dart';

void main() => runApp(BMICalculator());

const colorPrimary = Color(0xFF04040C);
const colorBackground = Color(0xFF141404);

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: colorPrimary,
          accentColor: Color(0xFFaabbcc),
          scaffoldBackgroundColor: colorBackground),
      home: PageInput(),
    );
  }
}
