import 'package:cook_book_fat_killers/domain/models/recipe.dart';

import 'calorie.dart';

class CookBook {
  List<RecipeModel> recipes;

  CookBook({
    required this.recipes,
  });
}

enum TopChoiceType { all, breakfast, lunch, dinner, supper, free }
