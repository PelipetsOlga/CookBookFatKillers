import 'package:cook_book_fat_killers/common/nav.dart';
import 'package:cook_book_fat_killers/di/di.dart';
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
              create: (context) => sl<CookBookCubit>()..loadCookBook())
        ],
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('CookBook Fat Killers'),
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
          body: CookbookWidget(), // This trailing
          bottomNavigationBar: _buildBottomNavigationBar(),
        ));
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
}
