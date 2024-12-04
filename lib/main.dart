import 'package:flutter/material.dart';
import 'package:statefulwidget/newcounter.dart';
import 'package:statefulwidget/toggle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Toggle(),
    );
  }
}