import 'package:bmi_calculator/page_input.dart';
import 'package:flutter/material.dart';
import 'page_input.dart';
import 'constants.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: kColorPrimary,
          accentColor: kColorAccent,
          scaffoldBackgroundColor: kColorBackground),
      home: PageInput(),
    );
  }
}
