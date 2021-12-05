import 'package:cook_book_fat_killers/common/theme.dart';
import 'package:cook_book_fat_killers/data/db/mappers/domain_to_data_mapper.dart';
import 'package:cook_book_fat_killers/data/json/repository/source_repository_json.dart';
import 'package:cook_book_fat_killers/domain/repository/source_repository.dart';
import 'package:flutter/material.dart';
import 'data/db/models/recipe_data.dart';
import 'data/db/repository/book_repository_db.dart';
import 'di/di.dart' as di;

import 'domain/models/recipe.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(DevApp());

  final SourceRepository _sourceRepository = SourceRepositoryImpl();
  final List<RecipeModel> sourceRecipes =
      await _sourceRepository.getRecipesFromSource();

  final BooksRepositoryDb _booksRepository = BooksRepositoryDb();

  final List<Recipe> dataRecipes =
      sourceRecipes.map((element) => element.toData()).toList();
  await _booksRepository.mockNewDb(dataRecipes);
}

class DevApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEV CookBook from Fat Killers',
      theme: ThemeData(
        primarySwatch: primaryColor,
      ),
      home: Scaffold(
        body: Center(
          child: Text('Constructing new DB'),
        ),
      ),
    );
  }
}
