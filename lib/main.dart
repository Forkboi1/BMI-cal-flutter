import 'dart:math';

import 'package:flutter/material.dart';
import 'b_m_i.dart';
import 'person.dart';
import 'result_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF0f172a),
          surface: Color(0xFF0f172a),
          secondary: Color(0xff3c3c3c),
          onSecondary: Color(0xff282828),
          onPrimary: Color.fromARGB(255, 187, 40, 77),
          onSurface: Colors.white,
        ),
        scaffoldBackgroundColor: const Color(0xFF0f172a),
        dividerColor: const Color(0xFF28283c),
        textTheme: const TextTheme(
          displaySmall: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          displayMedium: TextStyle(
            fontSize: 42,
            fontWeight: FontWeight.bold,
          ),
          displayLarge: TextStyle(
            fontSize: 58,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      home: BMI(),
      onGenerateRoute: (settings) {
        if (settings.name == '/result') {
          final args = settings.arguments as Person;
          return MaterialPageRoute(
            builder: (context) => ResultPage(person: args),
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      }
    );
  }
}
