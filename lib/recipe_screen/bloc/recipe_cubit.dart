import 'package:cook_book_fat_killers/domain/models/recipe.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/recipe_screen/bloc/recipe_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipeCubit extends Cubit<RecipeState> {
  final UserRepository userRepository;
  final RecipeModel recipeModel;

  RecipeCubit({required this.userRepository, required this.recipeModel})
      : super(RecipeStateInitial(recipeModel));

  void loadRecipe() async {
    if (state is RecipeStateLoading) return;
    final initialState = state;

    emit(
        new RecipeStateLoading(initialState.recipeModel, initialState.isFavourite));
    await Future.delayed(Duration(seconds: 2));

    final favoritesNumbers = await userRepository.getFavouriteRecipes();
    final isRecipeFavourite = favoritesNumbers.contains(recipeModel.recipeId);

    emit(new RecipeStateLoaded(initialState.recipeModel, isRecipeFavourite));
  }

  void toggleFavourite() async {
    if (state is RecipeStateLoading) return;
    final initialState = state;

    emit(
        new RecipeStateLoading(initialState.recipeModel, initialState.isFavourite));
    await Future.delayed(Duration(seconds: 2));
    if (initialState.isFavourite) {
      await userRepository.removeFavouriteRecipe(recipeModel.recipeId);
    } else {
      await userRepository.saveFavouriteRecipe(recipeModel.recipeId);
    }

    final favoritesNumbers = await userRepository.getFavouriteRecipes();
    final isRecipeFavouriteNow =
        favoritesNumbers.contains(recipeModel.recipeId);

    emit(new RecipeStateLoaded(recipeModel, isRecipeFavouriteNow));
  }
}
