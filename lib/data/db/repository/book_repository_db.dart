import 'package:cook_book_fat_killers/data/db/models/recipe_data.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:path_provider/path_provider.dart';

import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class BooksRepositoryDb {
  Database? _database = null;

  String _dbName = 'fat_killers_ua.db';
  String _recipesTable = 'recipes';
  String _columnRecipeId = 'recipeId';
  String _columnTitle = 'title';
  String _columnSmallPhotoUrl = 'smallPhotoUrl';
  String _columnBigPhotoUrl = 'bigPhotoUrl';
  String _columnIsFree = 'isFree';
  String _columnIngredients = 'ingredients';
  String _columnIngredientsTags = 'ingredientsTags';
  String _columnSteps = 'steps';
  String _columnStepsTags = 'stepsTags';
  String _columnEatingType = 'eatingType';
  String _columnMealQuantity = 'mealQuantity';
  String _columnAdditionalFood = 'additionalFood';

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  Future<Database> _initDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + _dbName;
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<List<Recipe>> mockNewDb() async {
    await _initDB();
    // for (int i=0; i<5; i++){
    //   await insertRecipe(
    //       Recipe(
    //           recipeId: i,
    //           title: 'title #$i',
    //           smallPhotoUrl: 'smallPhotoUrl$i',
    //           bigPhotoUrl: 'bigPhotoUrl$i',
    //           isFree: 'true',
    //           ingredients: 'eggs|chease|watermelon',
    //           ingredientsTags: '|italian food;snack|',
    //           steps: 'cut food|boil water|fry|stir',
    //           stepsTags: 'boiling|heating|steaming',
    //           eatingType: 'breakfast',
    //           mealQuantity: '200g|220g|240g|260g',
    //           additionalFood: 'bread')
    //   );
    // }
    return await getAllRecipes();
  }

  void _createDb(Database db, int version) async {
    await db.execute('CREATE TABLE [IF NOT EXISTS] $_recipesTable('
        '$_columnRecipeId INTEGER PRIMARY KEY, $_columnTitle TEXT, '
        '$_columnSmallPhotoUrl TEXT, $_columnBigPhotoUrl TEXT,'
        '$_columnIsFree TEXT, $_columnIngredients TEXT, $_columnIngredientsTags TEXT,'
        '$_columnSteps TEXT, $_columnStepsTags TEXT,'
        '$_columnEatingType TEXT, $_columnMealQuantity TEXT, $_columnAdditionalFood TEXT)');
  }

  //READ
  Future<List<Recipe>> getAllRecipes() async {
    Database db = await this.database;
    final List<Map<String, dynamic>> recipesMapList =
        await db.query(_recipesTable);
    final List<Recipe> recipesList = [];
    recipesMapList.forEach((map) {
      recipesList.add(Recipe.fromMap(map));
      print('getAllRecipes: $map');
    });
    return recipesList;
  }

  //INSERT
  Future<Recipe> insertRecipe(Recipe recipe) async {
    Database db = await this.database;
    await db.insert(_recipesTable, recipe.toMap());
    return recipe;
  }

  //UPDATE
  Future<int> updateRecipe(Recipe recipe) async {
    Database db = await this.database;
    return await db.update(_recipesTable, recipe.toMap(),
        where: '$_columnRecipeId = ?', whereArgs: [recipe.recipeId]);
  }

  //DELETE
  Future<int> deleteRecipe(int id) async {
    Database db = await this.database;
    return await db
        .delete(_recipesTable, where: '$_columnRecipeId = ?', whereArgs: [id]);
  }
}

// class BooksRepositoryDb extends BooksRepository{
//   Future<CookBook> getCookBook({bool isFree, bool isFiltered}){
//
//   }
// }
