import 'package:cook_book_fat_killers/data/db/mappers/utils.dart';
import 'package:cook_book_fat_killers/di/di.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/home_screen/bloc/home_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepositoryImpl extends UserRepository {
  bool _inited = false;
  List<int> _favouritesList = [];

  String _favouritesKey = 'favourites';

  Future<SharedPreferences> _preferences = SharedPreferences.getInstance();

  @override
  Future<List<int>> getFavouriteRecipes() async {
    if (_inited) return _favouritesList;
    final prefs = await _preferences;
    final savedFormattedFavourites = prefs.getString(_favouritesKey) ?? '';
    _favouritesList = _toFavouritesList(savedFormattedFavourites);
    _inited = true;
    return _favouritesList;
  }

  String _toFormattedFavourites() {
    return _favouritesList
        .fold(
            '',
            (previousValue, element) =>
                '$previousValue$firstLevelDivider$element')
        .trimDivider(firstLevelDivider);
  }

  List<int> _toFavouritesList(String savedString) {
    try {
      var list = savedString
          .split(firstLevelDivider)
          .map((e) => int.parse(e))
          .toList();
      return list;
    } catch (e) {
      return [];
    }
  }

  Future<void> _saveFavouriteRecipe(int recipeId) async {
    await getFavouriteRecipes();
    _favouritesList.add(recipeId);
    final prefs = await _preferences;
    prefs.setString(_favouritesKey, _toFormattedFavourites());
  }

  Future<void> _removeFavouriteRecipe(int recipeId) async {
    await getFavouriteRecipes();
    _favouritesList.remove(recipeId);
    final prefs = await _preferences;
    prefs.setString(_favouritesKey, _toFormattedFavourites());
  }

  @override
  Future<bool> isFavourites(int recipeId) async {
    return _favouritesList.contains(recipeId);
  }

  @override
  toggle(int number, bool selected) async {
    if (selected) {
      if (!_favouritesList.contains(number)) _saveFavouriteRecipe(number);
    } else {
      _removeFavouriteRecipe(number);
    }
    await sl<HomeBloc>().reload();
  }
}
