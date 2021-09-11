import 'package:cook_book_fat_killers/home/home_widget.dart';
import 'package:cook_book_fat_killers/recipe/recipe_widget.dart';
import 'package:flutter/material.dart';

class AppNavigation {
  static const HOME = '/';
  static const RECIPE = '/recipe';

  static Map<String, WidgetBuilder> getNavigationRoutes() {
    return <String, WidgetBuilder>{
      AppNavigation.HOME: (_) => HomePage(title: 'CookBook'),
      AppNavigation.RECIPE: (_) => RecipeWidget(),
    };
  }
}
