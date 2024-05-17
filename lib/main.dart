import 'package:flutter/material.dart';
import 'package:muhmadomar/pages/expanded_page.dart';
import 'package:muhmadomar/pages/stack_card_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),

      // الصورة الأولى
      home: const ExpandedPage(), // First Image

      // الصورة الثانية
      // home: const StackCardPage(), // Second Image
    );
  }
}