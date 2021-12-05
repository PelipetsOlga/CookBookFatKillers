part of 'bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.show(RecipeModel recipeModel) = RecipeEventShow;

  const factory RecipeEvent.toggle(
      {required bool selected,
      required RecipeModel recipeModel}) = RecipeEventToggle;
}
