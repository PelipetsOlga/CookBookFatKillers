class IngredientsModel {
  int recipeId;
  List<IngredientModel> ingredients;

  IngredientsModel(this.recipeId, this.ingredients);
}

class IngredientModel {
  String description;
  List<String> tags;

  IngredientModel(this.description, this.tags);
}
