import 'package:cook_book_fat_killers/data/db/models/recipe_data.dart';
import 'package:cook_book_fat_killers/domain/models/Ingredients.dart';
import 'package:cook_book_fat_killers/domain/models/calorie.dart';
import 'package:cook_book_fat_killers/domain/models/cooking_steps.dart';
import 'package:cook_book_fat_killers/domain/models/eating_type.dart';
import 'package:cook_book_fat_killers/domain/models/meal_quantity.dart';
import 'package:cook_book_fat_killers/domain/models/recipe.dart';
import 'package:cook_book_fat_killers/data/db/mappers/domain_to_data_mapper.dart';
import 'package:cook_book_fat_killers/data/db/mappers/data_to_domain_mapper.dart';
import 'package:test/test.dart';

IngredientsModel _ingredientsModel = IngredientsModel(777, [
  IngredientModel('eggs', []),
  IngredientModel('chease', ['italian food', 'snack']),
  IngredientModel('watermelon', []),
]);

CookingStepsModel _stepsModel = CookingStepsModel(
    777,
    ['cut food', 'boil water', 'fry', 'stir'],
    ['boiling', 'heating', 'steaming']);

MealQuantityModel _mealQuantityModel = MealQuantityModel(
    recipeId: 777,
    quantities: {
      CalorieModel1300(): '200g',
      CalorieModel1450(): '220g',
      CalorieModel1600(): '240g',
      CalorieModel1900(): '260g'
    },
    additionalFood: 'bread');

RecipeModel _recipeModel = RecipeModel(
    recipeId: 777,
    title: 'title',
    smallPhotoUrl: 'smallPhotoUrl',
    bigPhotoUrl: 'bigPhotoUrl',
    isFavourite: false,
    isFree: true,
    ingredientsModel: _ingredientsModel,
    stepsModel: _stepsModel,
    eatingType: BreakfastEatingTypeModel(),
    mealQuantityModel: _mealQuantityModel);

Recipe _recipeData = Recipe(
    recipeId: 777,
    title: 'title',
    smallPhotoUrl: 'smallPhotoUrl',
    bigPhotoUrl: 'bigPhotoUrl',
    isFree: 'true',
    ingredients: 'eggs|chease|watermelon',
    ingredientsTags: '|italian food;snack|',
    steps: 'cut food|boil water|fry|stir',
    stepsTags: 'boiling|heating|steaming',
    eatingType: 'breakfast',
    mealQuantity: '200g|220g|240g|260g',
    additionalFood: 'bread');

void main() {
  test('Recipe domain to data', () {
    var initialDomain = _recipeModel;
    var finalData = initialDomain.toData();
    var expectedData = _recipeData;
    expect(finalData, expectedData);
  });

  test('Recipe data to domain', () {
    var initialData = _recipeData;
    var domain = initialData.toDomain();
    var finalData = domain.toData();
    expect(initialData, finalData);
  });

  test('toMap and fromMap', () {
    var initialData = _recipeData;
    var map = initialData.toMap();
    var finalData = Recipe.fromMap(map);
    expect(initialData, finalData);
  });
}
