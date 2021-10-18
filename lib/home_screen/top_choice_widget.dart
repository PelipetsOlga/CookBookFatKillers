import 'package:cook_book_fat_killers/home_screen/model/view_model.dart';
import 'package:cook_book_fat_killers/widgets/domain_colors.dart';
import 'package:flutter/material.dart';

class TopChoiceWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TopChoiceWidgetState();
  }
}

class _TopChoiceWidgetState extends State<TopChoiceWidget> {
  TopChoiceType _topChoiceType = TopChoiceType.all;

  @override
  Widget build(BuildContext context) {
    final choices = [
      TopChoiceType.all,
      TopChoiceType.breakfast,
      TopChoiceType.lunch,
      TopChoiceType.dinner,
      TopChoiceType.supper,
      TopChoiceType.free
    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
        child: Wrap(children: choices.map((e) => _getChoiceChip(e)).toList()),
      ),
    );
  }

  ChoiceChip _getChoiceChip(TopChoiceType choiceType) {
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

    return ChoiceChip(
        selected: _topChoiceType == choiceType,
        label: Text(label),
        labelStyle: TextStyle(
          color: _topChoiceType == choiceType ? Colors.black : Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: _topChoiceType == choiceType ? 20 : 14,
        ),
        backgroundColor: background,
        selectedColor: selectedBackground,
        elevation: 10,
        onSelected: (bool selected) {
          setState(() {
            _topChoiceType = choiceType;
          });
        });
  }
}
