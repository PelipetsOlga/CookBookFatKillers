import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/widgets/domain_colors.dart';
import 'package:flutter/material.dart';
import 'package:cook_book_fat_killers/di/di.dart';

import 'bloc/home_bloc.dart';

final _choices = [
  TopChoiceType.all,
  TopChoiceType.breakfast,
  TopChoiceType.lunch,
  TopChoiceType.dinner,
  TopChoiceType.supper,
  TopChoiceType.free
];

class TopChoiceWidget extends StatelessWidget {
  final TopChoiceType topChoiceType;

  TopChoiceWidget({required this.topChoiceType});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Wrap(children: _choices.map((e) => _getChoiceChip(e)).toList()),
      ),
    );
  }

  Widget _getChoiceChip(TopChoiceType choiceType) {
    late Color background;
    late Color selectedBackground;
    late String label;

    if (choiceType == TopChoiceType.all) {
      background = colorBaseAccent;
      selectedBackground = colorBaseAccentSelected;
      label = 'Усі';
    } else if (choiceType == TopChoiceType.breakfast) {
      background = colorBreakfast;
      selectedBackground = colorBreakfastSelected;
      label = 'Завтрак';
    } else if (choiceType == TopChoiceType.lunch) {
      background = colorLunch;
      selectedBackground = colorLunchSelected;
      label = 'Перекус';
    } else if (choiceType == TopChoiceType.dinner) {
      background = colorDinner;
      selectedBackground = colorDinnerSelected;
      label = 'Обід';
    } else if (choiceType == TopChoiceType.supper) {
      background = colorSupper;
      selectedBackground = colorSupperSelected;
      label = 'Вечеря';
    } else if (choiceType == TopChoiceType.free) {
      background = colorFree;
      selectedBackground = colorFreeSelected;
      label = 'Безкоштовні';
    }

    return FilterChip(
        selected: topChoiceType == choiceType,
        label: Text(label),
        checkmarkColor: Colors.white,
        labelStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
        backgroundColor: background,
        selectedColor: selectedBackground,
        elevation: 8,
        onSelected: (bool selected) {
          sl<HomeBloc>().inputsSink.add(HomeEvent.topChoiceChanged(choiceType));
        });
  }
}
