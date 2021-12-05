import 'package:cook_book_fat_killers/domain/models/calorie.dart';

abstract class UserRepository {
  Future<List<int>> getFavouriteRecipes();

  Future<bool> isFavourites(int recipeId);

  toggle(int number, bool selected);

  Future<CalorieMenuBaseModel> getCalorieMenu();

  setCalorieMenu(CalorieMenuBaseModel calorieMenu);
}
