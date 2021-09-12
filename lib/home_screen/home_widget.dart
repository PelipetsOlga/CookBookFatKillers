import 'package:cook_book_fat_killers/common/nav.dart';
import 'package:cook_book_fat_killers/stubs.dart';
import 'package:flutter/material.dart';

import '../widgets/base_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({required this.title}) : super();

  final String title;

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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
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
      body: Container(
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
                itemCount: stubItems.length,
                itemBuilder: (context, index) {
                  return buildHomeListTile(context, index);
                },
              ),
            ),
          ],
        ),
      ), // This trailing
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
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
