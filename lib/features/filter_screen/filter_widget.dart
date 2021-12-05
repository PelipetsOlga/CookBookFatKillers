import 'package:cook_book_fat_killers/common/data_models.dart';
import 'package:flutter/material.dart';

import '../../stubs.dart';

class FilterWidget extends StatefulWidget {
  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  List<FilterState> _states = stubFilters.keys
      .map((e) => FilterState(e, stubFilters[e] ?? '', false))
      .toList();

  @override
  Widget build(BuildContext context) {
    bool clearButtonVisibility = _states.any((element) => element.selected);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Фільтр рецептів'),
        actions: clearButtonVisibility
            ? [
                IconButton(
                  icon: Icon(Icons.clear_outlined),
                  tooltip: "Очистити вибір",
                  onPressed: () {
                    setState(() {
                      _states.forEach((element) {
                        element.selected = false;
                      });
                    });
                  },
                ),
              ]
            : [],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Wrap(
              children: <Widget>[..._getChips()],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _getChips() {
    return _states
        .map((e) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: FilterChip(
                label: Text(e.title),
                selected: e.selected,
                onSelected: (value) {
                  setState(() {
                    _states
                        .firstWhere((element) => element.id == e.id)
                        .selected = value;
                  });
                },
              ),
            ))
        .toList();
  }
}
