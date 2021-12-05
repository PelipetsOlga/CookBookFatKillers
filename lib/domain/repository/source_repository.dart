
import 'package:cook_book_fat_killers/domain/models/recipe.dart';

abstract class SourceRepository {
  Future<List<RecipeModel>> getRecipesFromSource();
}