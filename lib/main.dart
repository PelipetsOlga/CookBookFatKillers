import 'package:cook_book_fat_killers/theme.dart';
import 'package:flutter/material.dart';

import 'widgets/home_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CookBook from Fat Killers',
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      home: HomePage(title: 'CookBook from Fat Killers'),
    );
  }
}