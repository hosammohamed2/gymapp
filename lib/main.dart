import 'package:flutter/material.dart';
import 'package:gymapp/home_page.dart';

void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:home_page(),
    );
  }
}
