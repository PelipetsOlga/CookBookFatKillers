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

final Map<int, String> stubFilters = {
  100: 'Творог',
  101: 'Сир',
  102: 'Куряче філе',
  103: 'Рисова мука',
  104: 'Яйце',
  105: 'Кабачок',
  106: 'Огірок',
  107: 'Тунець',
  108: 'Мука',
  109: 'Морква',
  110: 'Олія',
  111: 'Горіхи',
  112: 'Риба',
  113: 'Какао',
};
