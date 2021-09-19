class Recipe {
  int recipeId;
  String title;
  String smallPhotoUrl;
  String bigPhotoUrl;
  bool isFree;
  String ingredients;
  String ingredientsTags;
  String steps;
  String stepsTags;
  String eatingType;
  String mealQuantity;
  String additionalFood;

  Recipe({required this.recipeId,
    required this.title,
    required this.smallPhotoUrl,
    required this.bigPhotoUrl,
    required this.isFree,
    required this.ingredients,
    required this.ingredientsTags,
    required this.steps,
    required this.stepsTags,
    required this.eatingType,
    required this.mealQuantity,
    required this.additionalFood});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Recipe &&
              recipeId == other.recipeId &&
              title == other.title &&
              smallPhotoUrl == other.smallPhotoUrl &&
              bigPhotoUrl == other.bigPhotoUrl &&
              isFree == other.isFree &&
              ingredients == other.ingredients &&
              ingredientsTags == other.ingredientsTags &&
              steps == other.steps &&
              stepsTags == other.stepsTags &&
              eatingType == other.eatingType &&
              mealQuantity == other.mealQuantity &&
              additionalFood == other.additionalFood;

  @override
  int get hashCode =>
      recipeId.hashCode ^
      title.hashCode ^
      smallPhotoUrl.hashCode ^
      bigPhotoUrl.hashCode ^
      isFree.hashCode ^
      ingredients.hashCode ^
      ingredientsTags.hashCode ^
      steps.hashCode ^
      stepsTags.hashCode ^
      eatingType.hashCode ^
      mealQuantity.hashCode ^
      additionalFood.hashCode;

  Map<String, dynamic> toMap() {
    return {
      'recipeId': recipeId,
      'title': title,
      'smallPhotoUrl': smallPhotoUrl,
      'bigPhotoUrl': bigPhotoUrl,
      'isFree': isFree,
      'ingredients': ingredients,
      'ingredientsTags': ingredientsTags,
      'steps': steps,
      'stepsTags': stepsTags,
      'eatingType': eatingType,
      'mealQuantity': mealQuantity,
      'additionalFood': additionalFood,
    };
  }

  Recipe.fromMap(Map<String, dynamic> map) :this(
    recipeId: map['recipeId'] ?? 0,
    title: map['title'] ?? '',
    smallPhotoUrl: map['smallPhotoUrl'] ?? '',
    bigPhotoUrl: map['bigPhotoUrl'] ?? '',
    isFree: map['isFree'] ?? false,
    ingredients: map['ingredients'] ?? '',
    ingredientsTags: map['ingredientsTags'] ?? '',
    steps: map['steps'] ?? '',
    stepsTags: map['stepsTags'] ?? '',
    eatingType: map['eatingType'] ?? '',
    mealQuantity: map['mealQuantity'] ?? '',
    additionalFood: map['additionalFood'] ?? '',
  );
}
