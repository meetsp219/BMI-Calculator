import 'package:bmi_calculator/screens/MainScreen.dart';
import 'package:bmi_calculator/screens/ResultPage.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../widgets/IconTextWidget.dart';
import '../widgets/ReusableCard.dart';
import '../widgets/CustomButton.dart';
import 'ResultPage.dart';

void main() {
  runApp(const MyApp());
}

enum Gender { male, female }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/main': (context) => MainScreen(),
        // '/results': (context) => ResultPage(),
      },
      initialRoute: '/main',
    );
  }
}
