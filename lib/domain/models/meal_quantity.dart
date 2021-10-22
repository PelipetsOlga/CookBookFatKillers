import 'calorie.dart';

class MealQuantityModel {
  int recipeId;
  String? additionalFood;
  Map<CalorieMenuBaseModel, String> quantities;

  MealQuantityModel({
    required this.recipeId,
    this.additionalFood,
    required this.quantities,
  });
}
