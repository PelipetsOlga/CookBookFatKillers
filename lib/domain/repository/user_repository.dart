import 'dart:ffi';

abstract class UserRepository {
  Future<List<int>> getFavouriteRecipes();

  Future<void> saveFavouriteRecipe(int recipeId);

  Future<void> removeFavouriteRecipe(int recipeId);
}
