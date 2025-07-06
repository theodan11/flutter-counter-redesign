import 'package:counter_app_redesign/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Connter App Re-design',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(primary: Color(0xFF4DB6AC)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
