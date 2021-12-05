import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_data.g.dart';

@JsonSerializable()
class RecipesList{
  List<Recipe> recipes;

  RecipesList(this.recipes);

  factory RecipesList.fromJson(Map<String, dynamic> json) => _$RecipesListFromJson(json);

  Map<String, dynamic> toJson() => _$RecipesListToJson(this);
}

@JsonSerializable()
class Recipe {
  int recipeId;
  String title;
  String? smallPhotoUrl;
  String? bigPhotoUrl;
  String isFree;
  String ingredients;
  String? ingredientsTags;
  String steps;
  String? stepsTags;
  String eatingType;
  String mealQuantity;
  String? additionalFood;

  Recipe(
      this.recipeId,
      this.title,
      this.smallPhotoUrl,
      this.bigPhotoUrl,
      this.isFree,
      this.ingredients,
      this.ingredientsTags,
      this.steps,
      this.stepsTags,
      this.eatingType,
      this.mealQuantity,
      this.additionalFood);

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}
