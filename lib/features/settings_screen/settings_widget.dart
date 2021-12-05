//todo dispose bloc

import 'package:cook_book_fat_killers/domain/models/calorie.dart';
import 'package:flutter/material.dart';

import 'bloc/bloc.dart';

class SettingsWidget extends StatelessWidget {
  final bloc = CalorieMenuBloc();

  @override
  Widget build(BuildContext context) {
    bloc.inputsSink.add(CalorieMenuEventShow());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ваш калораж'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: StreamBuilder<CalorieMenuState>(
                stream: bloc.outputsStream,
                initialData: CalorieMenuState.initial(),
                builder: (context, snapshot) {
                  if (snapshot.data is CalorieMenuStateLoaded) {
                    final state = snapshot.data as CalorieMenuStateLoaded;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[..._getChips(state.menu)],
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                }),
          ),
        ),
      ),
    );
  }

  List<Widget> _getChips(CalorieMenuBaseModel selectedMenu) {
    return allCalorieMenus
        .map((e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilterChip(
                label: Text('${e.calories} ккал'),
                selected: e == selectedMenu,
                onSelected: (bool value) {
                  bloc.inputsSink.add(CalorieMenuEventSet(e));
                },
              ),
            ))
        .toList()
      ..add(Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Тут буде сторінка з розрахунком калорій відповідно до маси тіла, росту, віку та активності',
          style: TextStyle(fontSize: 24),
        ),
      ));
  }
}
