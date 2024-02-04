import 'package:flutter/material.dart';
import 'package:flutter_fashion_app/UI/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashio',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: HomeScreen(),
    );
  }
}
