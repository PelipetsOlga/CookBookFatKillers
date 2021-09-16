class CookingStepsModel {
  int recipeId;
  List<String> steps;

  CookingStepsModel(this.recipeId, this.steps);
}

class CookingStepModel {
  String description;
  List<String> tags;

  CookingStepModel(this.description, this.tags);
}
