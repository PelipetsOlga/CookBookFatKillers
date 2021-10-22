import 'package:cook_book_fat_killers/domain/models/recipe.dart';

abstract class RecipeState {
  final bool isFavourite;

  final RecipeModel recipeModel;

  const RecipeState(this.recipeModel, this.isFavourite);
}

class RecipeStateInitial extends RecipeState {
  const RecipeStateInitial(recipeModel) : super(recipeModel, false);
}

class RecipeStateLoading extends RecipeState {
  const RecipeStateLoading(recipeModel, isFavourite)
      : super(recipeModel, isFavourite);
}

class RecipeStateLoaded extends RecipeState {
  const RecipeStateLoaded(recipeModel, isFavourite)
      : super(recipeModel, isFavourite);
}
