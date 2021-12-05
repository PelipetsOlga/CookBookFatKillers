import 'package:cook_book_fat_killers/common/nav.dart';
import 'package:cook_book_fat_killers/di/di.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/home_screen/cookbook_widget.dart';
import 'package:flutter/material.dart';

import 'bloc/home_bloc.dart';

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
              title: Text(_getAppBarTitle()),
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
            bottomNavigationBar: _buildBottomNavigationBar(snapshot.data),
          );
        });
  }

  String _getAppBarTitle() {
    return 'Temp title';
  }

  Widget _getBody(HomeState? state) {
    return state != null ? CookbookWidget(state: state) : FlutterLogo();
  }

  Widget _buildBottomNavigationBar(HomeState? state) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Рецепти'),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: 'Закладки'),
      ],
      currentIndex: state?.isFavourites == true ? 1 : 0,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    if (index == 0) {
      bloc.inputsSink.add(HomeEvent.search());
    } else if (index == 1) {
      bloc.inputsSink.add(HomeEvent.favourites());
    }
  }
}
