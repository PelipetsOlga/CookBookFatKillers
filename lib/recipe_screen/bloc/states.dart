part of 'bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.initial() = RecipeStateInitial;

  const factory RecipeState.loading() = RecipeStateLoading;

  const factory RecipeState.loaded(
      {required RecipeModel recipe,
      required bool isFavourites}) = RecipeStateLoaded;
}
