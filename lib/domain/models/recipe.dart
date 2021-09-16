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

  RecipeModel(
    this.recipeId,
    this.title,
    this.smallPhotoUrl,
    this.bigPhotoUrl,
    this.isFavourite,
    this.isFree,
    this.ingredientsModel,
    this.stepsModel,
    this.eatingType,
    this.mealQuantityModel,
  );
}
