import 'package:cook_book_fat_killers/common/nav.dart';
import 'package:cook_book_fat_killers/di/di.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/favourites/bloc/favourites_cubit.dart';
import 'package:cook_book_fat_killers/home_screen/cookbook_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_cubit.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedBottomMenuIndex = 0;
  TopChoiceType topChoice = TopChoiceType.all;

  void _onItemTapped(int index) {
    setState(() {
      _selectedBottomMenuIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CookBookCubit>(
            create: (context) => sl<CookBookCubit>()..loadCookBook(topChoice)),
        BlocProvider<FavouritesCubit>(
            create: (context) => sl<FavouritesCubit>()..loadFavourites()),
      ],
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(_getAppBarTitle()),
          actions: _selectedBottomMenuIndex != 2
              ? [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, AppNavigation.FILTER);
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Icon(Icons.filter_alt_outlined),
                    ),
                  )
                ]
              : [],
        ),
        body: _getBody(), // This trailing
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  String _getAppBarTitle() {
    if (_selectedBottomMenuIndex == 0) {
      return 'CookBook Fat Killers';
    } else if (_selectedBottomMenuIndex == 1) {
      return 'Favourites';
    } else {
      //if (_selectedBottomMenuIndex==2)
      return 'Help';
    }
  }

  Widget _getBody() {
    if (_selectedBottomMenuIndex == 0) {
      return _getHomeTabContent();
    } else if (_selectedBottomMenuIndex == 1) {
      return _getFavouritesTabContent();
    } else {
      //if (_selectedBottomMenuIndex==2)
      return _getHelpTabContent();
    }
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Рецепти'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Закладки'),
        BottomNavigationBarItem(
            icon: Icon(Icons.help_outline), label: 'Допомога'),
      ],
      currentIndex: _selectedBottomMenuIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }

  Widget _getHomeTabContent() {
    return CookbookWidget(false);
  }

  Widget _getFavouritesTabContent() {
    return CookbookWidget(true);
  }

  Widget _getHelpTabContent() {
    return Center(
      child: Text('Help screen'),
    );
  }
}
