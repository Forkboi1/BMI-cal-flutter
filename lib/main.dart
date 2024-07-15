import 'package:flutter/material.dart';
import 'b_m_i.dart';

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
          onPrimary: Colors.white,
          onSurface: Colors.white,
        ),
        scaffoldBackgroundColor: Color(0xFF0f172a),
        dividerColor: Color(0xFF28283c),
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          displayLarge: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          )
        ),
      ),
      home: const BMI(),
    );
  }
}