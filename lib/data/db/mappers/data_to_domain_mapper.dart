import 'package:cook_book_fat_killers/data/db/mappers/utils.dart';
import 'package:cook_book_fat_killers/data/db/models/recipe_data.dart';
import 'package:cook_book_fat_killers/domain/models/Ingredients.dart';
import 'package:cook_book_fat_killers/domain/models/calorie.dart';
import 'package:cook_book_fat_killers/domain/models/cooking_steps.dart';
import 'package:cook_book_fat_killers/domain/models/eating_type.dart';
import 'package:cook_book_fat_killers/domain/models/meal_quantity.dart';
import 'package:cook_book_fat_killers/domain/models/recipe.dart';

extension Mapper on Recipe {
  RecipeModel toDomain() {
    return RecipeModel(
        recipeId: this.recipeId,
        title: this.title,
        smallPhotoUrl: this.smallPhotoUrl,
        bigPhotoUrl: this.bigPhotoUrl,
        isFavourite: false,
        isFree: isFree,
        ingredientsModel: toIngredientsModel(),
        stepsModel: toStepsModel(),
        eatingType: toEatingTypeModel(),
        mealQuantityModel: toMealQuantityModel());
  }

  EatingTypeBase toEatingTypeModel() {
    switch (this.eatingType) {
      case 'breakfast':
        return BreakfastEatingTypeModel();
      case 'lunch':
        return LunchEatingTypeModel();
      case 'dinner':
        return DinnerEatingTypeModel();
      case 'supper':
        return SupperEatingTypeModel();
      default:
        return LunchEatingTypeModel();
    }
  }

  MealQuantityModel toMealQuantityModel() {
    List<String> quantities = mealQuantity.split(firstLevelDivider);
    while (quantities.length < 4) {
      quantities.add('');
    }
    MealQuantityModel mealQuantityModel = MealQuantityModel(
        recipeId: recipeId,
        additionalFood: additionalFood.isEmpty ? null : additionalFood,
        quantities: {
          CalorieModel1300(): quantities[0],
          CalorieModel1450(): quantities[1],
          CalorieModel1600(): quantities[2],
          CalorieModel1900(): quantities[3]
        });
    return mealQuantityModel;
  }

  IngredientsModel toIngredientsModel() {
    List<String> ingredients = this.ingredients.split(firstLevelDivider);
    List<String> ingredientsTags =
        this.ingredientsTags.split(firstLevelDivider);
    while (ingredientsTags.length < ingredients.length) {
      ingredientsTags.add('');
    }
    List<IngredientModel> results = [];
    for (int i = 0; i < ingredients.length; i++) {
      results.add(IngredientModel(
          ingredients[i], ingredientsTags[i].split(secondLevelDivider)));
    }
    return IngredientsModel(recipeId, results);
  }

  CookingStepsModel toStepsModel() {
    List<String> stepsDescriptions = this.steps.split(firstLevelDivider);
    List<String> stepsTags = this.stepsTags.split(firstLevelDivider);
    return CookingStepsModel(recipeId, stepsDescriptions, stepsTags);
  }
}
