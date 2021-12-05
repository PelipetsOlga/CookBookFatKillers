import 'package:cook_book_fat_killers/common/theme.dart';
import 'package:flutter/material.dart';
import 'di/di.dart' as di;

import 'common/nav.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
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
      routes: AppNavigation.getNavigationRoutes(),
    );
  }
}
