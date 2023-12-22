import 'package:flutter/material.dart';
import 'package:flutter_sber/layout/layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 8, 166, 82),
        backgroundColor: const Color.fromARGB(255, 250, 250, 250),
        useMaterial3: true,
      ),
      home: const Layout(),
    );
  }
}
