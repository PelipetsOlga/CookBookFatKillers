import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/widgets/base_widgets.dart';
import 'package:flutter/material.dart';
import 'package:cook_book_fat_killers/stubs.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../widgets/base_widgets.dart';

import '../stubs.dart';
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
      } else //if (state is CookBookLoading)
          {
        return _loadingIndicator();
      }
    });
  }

  Widget _cookBookView(CookBook cookBook) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.white54, BlendMode.lighten),
          image: AssetImage("assets/base_images/food_background.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _getTopTabs(),
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

Widget _getTopTabs() {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildEatingTab('Завтрак', Colors.green),
          buildEatingTab('Перекус', Colors.pinkAccent),
          buildEatingTab('Обід', Colors.orangeAccent),
          buildEatingTab('Вечеря', Colors.lightBlueAccent),
          buildEatingTab('Free', Colors.blueGrey),
        ],
      ),
    ),
  );
}

Widget _loadingIndicator() {
  return Padding(
    padding: EdgeInsets.all(16),
    child: Center(child: CircularProgressIndicator()),
  );
}
