import 'package:cook_book_fat_killers/domain/models/recipe.dart';

import 'calorie.dart';

class CookBook {
  List<RecipeModel> recipes;
  bool isFree;
  CalorieMenuBaseModel? selectedCalorieMenu;
  bool isFiltered;

  CookBook({
    required this.recipes,
    required this.isFree,
    this.selectedCalorieMenu,
    required this.isFiltered,
  });
}

enum TopChoiceType { all, breakfast, lunch, dinner, supper, free }
