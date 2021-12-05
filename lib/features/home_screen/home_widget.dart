import 'package:cook_book_fat_killers/common/nav.dart';
import 'package:cook_book_fat_killers/di/di.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:flutter/material.dart';

import 'bloc/home_bloc.dart';
import 'cookbook_widget.dart';

class HomePage extends StatelessWidget {
  final HomeBloc bloc = sl<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    bloc.inputsSink.add(HomeEvent.search());
    return StreamBuilder<HomeState>(
        stream: bloc.outputsStream,
        initialData: HomeState.initial(TopChoiceType.all, isFavourites: false),
        builder: (context, snapshot) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(_getAppBarTitle(snapshot.data)),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppNavigation.FILTER);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Icon(Icons.filter_alt_outlined),
                  ),
                )
              ],
            ),
            body: _getBody(snapshot.data), // This trailing
            bottomNavigationBar:
                _buildBottomNavigationBar(snapshot.data, context),
          );
        });
  }

  String _getAppBarTitle(HomeState? state) {
    if (state != null && (state is HomeStateLoaded) && state.isFavourites) {
      return 'Улюблені рецепти';
    } else {
      return 'CookBook';
    }
  }

  Widget _getBody(HomeState? state) {
    return state != null ? CookbookWidget(state: state) : FlutterLogo();
  }

  Widget _buildBottomNavigationBar(HomeState? state, BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Рецепти'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Закладки'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Налаштування'),
      ],
      currentIndex: state?.isFavourites == true ? 1 : 0,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.grey,
      onTap: (index) => _onItemTapped(index, context),
    );
  }

  void _onItemTapped(int index, BuildContext context) {
    if (index == 0) {
      bloc.inputsSink.add(HomeEvent.search());
    } else if (index == 1) {
      bloc.inputsSink.add(HomeEvent.favourites());
    } else if (index == 2) {
      Navigator.pushNamed(context, AppNavigation.SETTINGS);
    }
  }
}
