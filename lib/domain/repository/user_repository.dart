abstract class UserRepository {
  Future<List<int>> getFavouriteRecipes();

  Future<bool> isFavourites(int recipeId);

  toggle(int number, bool selected);
}
