import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/home_screen/top_choice_widget.dart';
import 'package:cook_book_fat_killers/widgets/base_widgets.dart';
import 'package:cook_book_fat_killers/widgets/domain_colors.dart';
import 'package:flutter/material.dart';
import '../widgets/base_widgets.dart';

import 'bloc/home_bloc.dart';

class CookbookWidget extends StatelessWidget {
  final HomeState state;

  CookbookWidget({required this.state});

  @override
  Widget build(BuildContext context) {
    return state.when(
        initial: (topChoice, isFavourites) => const FlutterLogo(size: 120),
        empty: (topChoice, isFavourites) => isFavourites
            ? Text('empty favourites')
            : Text('empty recipes list'),
        error: (message, topChoice, isFavourites) => Text(message),
        loading: (_, isFavourites) => _loadingIndicator(),
        loaded: (result, topChoice, isFavourites) =>
            _cookBookView(result, topChoice, isFavourites));
  }

  Widget _cookBookView(
      CookBook cookBook, TopChoiceType topChoiceType, bool isFavorites) {
    return Container(
      color: colorMainBackground,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _getCookBookViewContent(cookBook, topChoiceType, isFavorites),
      ),
    );
  }

  List<Widget> _getCookBookViewContent(
      CookBook cookBook, TopChoiceType topChoiceType, bool isFavorites) {
    List<Widget> list = [];
    if (!isFavorites) list.add(TopChoiceWidget(topChoiceType: topChoiceType));
    list.add(Expanded(
      child: ListView.builder(
        itemCount: cookBook.recipes.length,
        itemBuilder: (context, index) {
          return buildHomeListTile(context, cookBook.recipes[index]);
        },
      ),
    ));
    return list;
  }
}

Widget _loadingIndicator() {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Center(child: CircularProgressIndicator()),
  );
}
