import 'package:flutter/material.dart';

import 'base_widgets.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

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
        title: Text(widget.title),
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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                    Text('You have pushed the button this many times:'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ), // This trailing
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Padding _getTopTabs() {
    return Padding(
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
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Рецепти'),
        BottomNavigationBarItem(icon: Icon(Icons.star_outline), label: 'Закладки'),
        BottomNavigationBarItem(icon: Icon(Icons.filter_alt_outlined), label: 'Пошук'),
        BottomNavigationBarItem(icon: Icon(Icons.help_outline), label: 'Допомога'),
      ],
      currentIndex: _selectedBottomMenuIndex,
      selectedItemColor: Colors.amber[800],
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
    );
  }
}
