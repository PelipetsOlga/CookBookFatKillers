class IngredientsModel {
  int recipeId;
  List<IngredientModel> ingredients;

  IngredientsModel(this.recipeId, this.ingredients);
}

class IngredientModel {
  int id;
  String description;
  List<String> tags;

  IngredientModel(this.id, this.description, this.tags);
}
