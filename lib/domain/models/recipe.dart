import 'package:cook_book_fat_killers/domain/models/Ingredients.dart';
import 'package:cook_book_fat_killers/domain/models/cooking_steps.dart';

import 'eating_type.dart';
import 'meal_quantity.dart';

class RecipeModel {
  int recipeId;
  String title;
  String smallPhotoUrl;
  String bigPhotoUrl;
  bool isFavourite;
  bool isFree;
  IngredientsModel ingredientsModel;
  CookingStepsModel stepsModel;
  EatingTypeBase eatingType;
  MealQuantityModel mealQuantityModel;

  RecipeModel({
    required this.recipeId,
    required this.title,
    required this.smallPhotoUrl,
    required this.bigPhotoUrl,
    required this.isFavourite,
    required this.isFree,
    required this.ingredientsModel,
    required this.stepsModel,
    required this.eatingType,
    required this.mealQuantityModel,
  });
}
