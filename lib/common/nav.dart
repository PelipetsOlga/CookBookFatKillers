import 'package:cook_book_fat_killers/domain/models/recipe.dart';
import 'package:cook_book_fat_killers/filter_screen/filter_widget.dart';
import 'package:cook_book_fat_killers/home_screen/home_widget.dart';
import 'package:cook_book_fat_killers/recipe_screen/recipe_widget.dart';
import 'package:flutter/material.dart';

class AppNavigation {
  static const HOME = '/';
  static const RECIPE = '/recipe';
  static const FILTER = '/filter';

  static Map<String, WidgetBuilder> getNavigationRoutes() {
    return <String, WidgetBuilder>{
      AppNavigation.HOME: (_) => HomePage(),
      AppNavigation.RECIPE: (_) => RecipeWidget(),
      AppNavigation.FILTER: (_) => FilterWidget(),
    };
  }
}

class RecipeScreenBundle{
  RecipeModel recipeModel;

  RecipeScreenBundle({required this.recipeModel});
}
