import 'package:flutter/material.dart';
import 'package:news/screens/home_screen.dart';

void main() {
runApp(NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

