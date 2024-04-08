import 'package:flutter/material.dart';
import 'package:lodseriet/data/dummy_data.dart';
import 'package:lodseriet/screens/overview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pilot Jobs',
      // theme: ThemeData.dark(), // Sets the dark theme
      home: Overview(jobs: dummyData),
    );
  }
}
