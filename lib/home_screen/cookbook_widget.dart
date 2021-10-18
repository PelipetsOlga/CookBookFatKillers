import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/home_screen/top_choice_widget.dart';
import 'package:cook_book_fat_killers/widgets/base_widgets.dart';
import 'package:cook_book_fat_killers/widgets/domain_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/base_widgets.dart';

import 'bloc/home_cubit.dart';
import 'bloc/home_state.dart';

class CookbookWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CookBookCubit, CookBookState>(builder: (context, state) {
      if (state is CookBookEmpty) {
        return Center(child: Text('Empty'));
      } else if (state is CookBookLoaded) {
        return _cookBookView(state.cookBook);
      } else if (state is CookBookError) {
        return Center(child: Text(state.message));
      } else {
        //if (state is CookBookLoading)
        return _loadingIndicator();
      }
    });
  }

  Widget _cookBookView(CookBook cookBook) {
    return Container(
      color: colorMainBackground,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopChoiceWidget(),
          Expanded(
            child: ListView.builder(
              itemCount: cookBook.recipes.length,
              itemBuilder: (context, index) {
                return buildHomeListTile(context, cookBook.recipes[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget _loadingIndicator() {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Center(child: CircularProgressIndicator()),
  );
}
