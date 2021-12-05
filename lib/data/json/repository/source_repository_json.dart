import 'package:cook_book_fat_killers/data/json/mapper/data_to_domain_mapper.dart';
import 'package:cook_book_fat_killers/data/json/serializable/recipe_data.dart';
import 'package:cook_book_fat_killers/domain/models/recipe.dart';
import 'package:cook_book_fat_killers/domain/repository/source_repository.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class SourceRepositoryImpl extends SourceRepository {
  @override
  Future<List<RecipeModel>> getRecipesFromSource() async {
    final String stringResult =
        await rootBundle.loadString('assets/json_sources/recipes_1.json');
    final RecipesList result =
        RecipesList.fromJson(json.decode(stringResult) as Map<String, dynamic>);
    return result.toDomain();
  }
}
