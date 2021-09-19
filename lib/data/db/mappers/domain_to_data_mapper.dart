import 'package:cook_book_fat_killers/data/db/mappers/utils.dart';
import 'package:cook_book_fat_killers/data/db/models/recipe_data.dart';
import 'package:cook_book_fat_killers/domain/models/Ingredients.dart';
import 'package:cook_book_fat_killers/domain/models/cooking_steps.dart';
import 'package:cook_book_fat_killers/domain/models/recipe.dart';

extension Mapper on RecipeModel {
  Recipe toData() {
    return Recipe(
        recipeId: this.recipeId,
        title: this.title,
        smallPhotoUrl: this.smallPhotoUrl,
        bigPhotoUrl: this.bigPhotoUrl,
        isFree: this.isFree,
        ingredients: this._toIngredients(),
        ingredientsTags: this._toIngredientsTags(),
        steps: this._toSteps(),
        stepsTags: this._toStepsTags(),
        eatingType: this._toDataEating(),
        mealQuantity: this._toMealQuantity(),
        additionalFood: this.mealQuantityModel.additionalFood ?? '');
  }

  String _toDataEating() {
    return this.eatingType.title;
  }

  String _toIngredients() {
    return this
        .ingredientsModel
        .ingredients
        .map((ingredientsModel) => ingredientsModel.description)
        .toList()
        .fold(
            '',
            (previousValue, element) =>
                '$previousValue$firstLevelDivider$element')
        .trimDivider(firstLevelDivider);
  }

  String _toIngredientsTags() {
    List<IngredientModel> ingredients = this.ingredientsModel.ingredients;
    List<String> tags = [];
    ingredients.forEach((ingredient) {
      if (ingredient.tags.isEmpty) {
        tags.add('');
      } else {
        tags.add(ingredient.tags
            .fold(
                '',
                (previousValue, element) =>
                    '$previousValue$secondLevelDivider$element')
            .trimDivider(secondLevelDivider));
      }
    });

    return tags
        .fold(
            '',
            (previousValue, element) =>
                '$previousValue$firstLevelDivider$element')
        .trimDivider(firstLevelDivider);
  }

  String _toSteps() {
    return this
        .stepsModel
        .steps
        .fold(
            '',
            (previousValue, element) =>
                '$previousValue$firstLevelDivider$element')
        .trimDivider(firstLevelDivider);
  }

  String _toStepsTags() {
    return this.stepsModel.tags
        .fold(
            '',
            (previousValue, element) =>
                '$previousValue$firstLevelDivider$element')
        .trimDivider(firstLevelDivider);
  }

  String _toMealQuantity() {
    return this
        .mealQuantityModel
        .quantities
        .values
        .fold(
            '',
            (previousValue, element) =>
                '$previousValue$firstLevelDivider$element')
        .trimDivider(firstLevelDivider);
  }
}
