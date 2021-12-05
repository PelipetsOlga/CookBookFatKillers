import 'package:cook_book_fat_killers/data/db/mappers/utils.dart';
import 'package:cook_book_fat_killers/domain/models/calorie.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserRepositoryImpl extends UserRepository {
  bool _inited = false;
  bool _calorieMenuInited = false;
  List<int> _favouritesList = [];
  CalorieMenuBaseModel _calorieMenu = CalorieModel1300();

  final String _favouritesKey = 'favourites';
  final String _calorieMenuKey = '_calorieMenu';
  final int _menu_1300 = 1300;
  final int _menu_1450 = 1450;
  final int _menu_1600 = 1600;
  final int _menu_1900 = 1900;

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
  }

  @override
  Future<CalorieMenuBaseModel> getCalorieMenu() async {
    if (_calorieMenuInited) return _calorieMenu;
    final prefs = await _preferences;
    final savedMenu = prefs.getInt(_calorieMenuKey);
    if (savedMenu == _menu_1450) {
      _calorieMenu = CalorieModel1450();
    } else if (savedMenu == _menu_1600) {
      _calorieMenu = CalorieModel1600();
    } else if (savedMenu == _menu_1900) {
      _calorieMenu = CalorieModel1900();
    } else {
      _calorieMenu = CalorieModel1300();
    }
    _calorieMenuInited = true;
    return _calorieMenu;
  }

  @override
   setCalorieMenu(CalorieMenuBaseModel calorieMenu) async {
    _calorieMenu = calorieMenu;
    final prefs = await _preferences;
    await prefs.setInt(_calorieMenuKey, calorieMenu.calories);
  }
}
