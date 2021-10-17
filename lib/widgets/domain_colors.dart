import 'package:cook_book_fat_killers/domain/models/eating_type.dart';
import 'package:flutter/material.dart';

const Color colorMainBackground = Colors.white;
const Color colorEmptyDefault = Color(0xFF757575);
const Color colorBaseAccent = Color(0xFFa18378);
const Color colorBreakfast = Color(0xffeb94cc);
const Color colorLunch = Color(0xff90bba5);
const Color colorDinner = Color(0xffeeab5d);
const Color colorSupper = Color(0xff6eb4c4);
const Color colorFree = Color(0xFF78909C);

final Map<EatingType, Color> _domainColors = {
  EatingType.breakfast: colorBreakfast,
  EatingType.lunch: colorLunch,
  EatingType.dinner: colorDinner,
  EatingType.supper: colorSupper
};

Color getDomainColor(EatingType eatingType) {
  return _domainColors[eatingType] ?? colorEmptyDefault;
}
