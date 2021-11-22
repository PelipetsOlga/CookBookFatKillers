import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/favourites/bloc/favourites_bloc.dart';
import 'package:cook_book_fat_killers/home_screen/top_choice_widget.dart';
import 'package:cook_book_fat_killers/widgets/base_widgets.dart';
import 'package:cook_book_fat_killers/widgets/domain_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/base_widgets.dart';

import 'bloc/home_bloc.dart';

class CookbookWidget extends StatelessWidget {
  final bool isFavourites;

  CookbookWidget({required this.isFavourites});

  @override
  Widget build(BuildContext context) {
    if (isFavourites) {
      final state = context.watch<FavouritesBloc>().state;

      return state.when(
          initial: () => const FlutterLogo(size: 120),
          empty: () => Text('empty favourites'),
          error: (message) => Text(message),
          loading: () => _loadingIndicator(),
          loaded: (result) => _cookBookView(result));
    } else {
      final state = context.watch<HomeBloc>().state;

      return state.when(
          initial: () => const FlutterLogo(size: 120),
          empty: () => Text('empty recipes list'),
          error: (message) => Text(message),
          loading: () => _loadingIndicator(),
          loaded: (result) => _cookBookView(result));
    }
  }

  Widget _cookBookView(CookBook cookBook) {
    return Container(
      color: colorMainBackground,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _getCookBookViewContent(cookBook),
      ),
    );
  }

  List<Widget> _getCookBookViewContent(CookBook cookBook) {
    List<Widget> list = [];
    if (!isFavourites) list.add(TopChoiceWidget());
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
