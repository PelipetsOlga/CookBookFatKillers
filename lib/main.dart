import 'package:cook_book_fat_killers/common/theme.dart';
import 'package:flutter/material.dart';

import 'common/nav.dart';
import 'data/db/repository/book_repository_db.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  BooksRepositoryDb repository = BooksRepositoryDb();

  @override
  Widget build(BuildContext context) {
    repository.mockNewDb().then((_) => print('all is done'));

    return MaterialApp(
      title: 'CookBook from Fat Killers',
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      routes: AppNavigation.getNavigationRoutes(),
    );
  }
}
