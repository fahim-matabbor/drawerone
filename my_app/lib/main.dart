// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DRAWER',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
