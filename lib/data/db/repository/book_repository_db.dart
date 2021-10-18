import 'dart:typed_data';

import 'package:cook_book_fat_killers/common/error/failure.dart';
import 'package:cook_book_fat_killers/data/db/mappers/data_to_domain_mapper.dart';
import 'package:cook_book_fat_killers/data/db/models/recipe_data.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/domain/models/recipe.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

import 'dart:io' as io;

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class BooksRepositoryDb extends BooksRepository {
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
    io.Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + _dbName;
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<void> init() async {
    io.Directory applicationDirectory =
        await getApplicationDocumentsDirectory();

    String databasePath =
        path.join(applicationDirectory.path, "fat_killers_ua.db");

    bool dbExists = await io.File(databasePath).exists();

    if (!dbExists) {
      // Copy from asset
      ByteData data =
          await rootBundle.load(path.join("assets/db", "fat_killers_ua.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      // Write and flush the bytes written
      await io.File(databasePath).writeAsBytes(bytes, flush: true);
    }

    this._database = await openDatabase(databasePath);
    // await getAllRecipes();
  }

  // Future<List<Recipe>> mockNewDb() async {
  //   await _initDB();
  //   return await getAllRecipes();
  // }

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
    await init();
    final List<Map<String, dynamic>> recipesMapList =
        await _database!.query(_recipesTable);
    final List<Recipe> recipesList = [];
    recipesMapList.forEach((map) {
      recipesList.add(Recipe.fromMap(map));
      print('getAllRecipes: $map');
    });
    return recipesList;
  }

  Future<List<Recipe>> getFreeRecipes() async {
    await init();
    final List<Map<String, dynamic>> recipesMapList = await _database!
        .query(_recipesTable, where: _columnIsFree, whereArgs: [true]);
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

  @override
  Future<Either<Failure, CookBook>> getCookBook(
      {bool isFree = false, bool isFiltered = false}) async {
    List<Recipe> allRecipesData =
        await (isFree ? getAllRecipes() : getFreeRecipes());
    List<RecipeModel> recipes =
        allRecipesData.map((e) => e.toDomain()).toList();
    // if (allRecipesData.isEmpty) {
    //   return Left(DbFailure());
    // } else {
    //   return Right(CookBook(recipes: recipes, isFree: true, isFiltered: false));
    // }
    return Right(CookBook(recipes: recipes, isFree: true, isFiltered: false));
  }
}
