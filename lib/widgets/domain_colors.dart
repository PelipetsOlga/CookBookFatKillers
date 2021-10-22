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

const Color colorBaseAccentSelected = Color(0xFF785d54);
const Color colorBreakfastSelected = Color(0xffdb3da4);
const Color colorLunchSelected = Color(0xff578e72);
const Color colorDinnerSelected = Color(0xffd07916);
const Color colorSupperSelected = Color(0xff3b8191);
const Color colorFreeSelected = Color(0xFF4c5e67);

final Map<EatingType, Color> _domainColors = {
  EatingType.breakfast: colorBreakfast,
  EatingType.lunch: colorLunch,
  EatingType.dinner: colorDinner,
  EatingType.supper: colorSupper
};

Color getDomainColor(EatingType eatingType) {
  return _domainColors[eatingType] ?? colorEmptyDefault;
}
