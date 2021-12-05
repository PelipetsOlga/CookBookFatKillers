// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecipesList _$RecipesListFromJson(Map<String, dynamic> json) => RecipesList(
      (json['recipes'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecipesListToJson(RecipesList instance) =>
    <String, dynamic>{
      'recipes': instance.recipes,
    };

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      json['recipeId'] as int,
      json['title'] as String,
      json['smallPhotoUrl'] as String?,
      json['bigPhotoUrl'] as String?,
      json['isFree'] as String,
      json['ingredients'] as String,
      json['ingredientsTags'] as String?,
      json['steps'] as String,
      json['stepsTags'] as String?,
      json['eatingType'] as String,
      json['mealQuantity'] as String,
      json['additionalFood'] as String?,
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'recipeId': instance.recipeId,
      'title': instance.title,
      'smallPhotoUrl': instance.smallPhotoUrl,
      'bigPhotoUrl': instance.bigPhotoUrl,
      'isFree': instance.isFree,
      'ingredients': instance.ingredients,
      'ingredientsTags': instance.ingredientsTags,
      'steps': instance.steps,
      'stepsTags': instance.stepsTags,
      'eatingType': instance.eatingType,
      'mealQuantity': instance.mealQuantity,
      'additionalFood': instance.additionalFood,
    };
