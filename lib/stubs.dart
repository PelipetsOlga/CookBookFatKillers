import 'dart:math';

import 'package:flutter/material.dart';

final stubEating = ['Завтрак', 'Перекус', 'Обід', 'Вечеря'];
final stubColorEating = {
  'Завтрак': Colors.green,
  'Перекус': Colors.pinkAccent,
  'Обід': Colors.orangeAccent,
  'Вечеря': Colors.lightBlueAccent
};

final foodImages = [
  'assets/stubs/stub_food_1.png',
  'assets/stubs/stub_food_2.png',
  'assets/stubs/stub_food_3.png'
];

final stubItems = List<String>.generate(10000, (i) => "Рецепт $i");

final stubEatingItems =
    List<String>.generate(10000, (i) => stubEating[Random().nextInt(4)]);

final stubFoodImages =
    List<String>.generate(10000, (i) => foodImages[Random().nextInt(3)]);
