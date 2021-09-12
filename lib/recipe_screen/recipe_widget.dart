import 'package:cook_book_fat_killers/widgets/base_widgets.dart';
import 'package:flutter/material.dart';

import '../stubs.dart';

class RecipeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Легкий пиріг'),
          actions: [Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.favorite_border),
          )]),
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _getImage(),
              _getEatingType(),
              _getWeights(),
              _ingridients(),
              _cookingSteps(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _getImage() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(stubFoodImages[1]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget _getEatingType() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        buildEatingTab('ПРИЙОМ ЇЖІ', Colors.brown, padding: 12, fontSize: 18),
        buildEatingTab('СНІДАНОК', Colors.green, padding: 12, fontSize: 18),
      ],
    );
  }

  Widget _getWeights() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('1300 - 120г', style: usualTextStyle()),
          Text('1450 - 140г', style: usualTextStyle()),
          Text('1600 - 160г', style: usualTextStyle()),
          Text('1900 - 190г', style: usualTextStyle()),
        ],
      ),
    );
  }

  Widget _ingridients() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: buildEatingTab('ІНГРЕДІЄНТИ', Colors.brown,
                    padding: 12, fontSize: 18),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Рисове борошно -150 г', style: usualTextStyle()),
              Text('Вершкове масло - 50 г', style: usualTextStyle()),
              Text('Яйця - 3 шт', style: usualTextStyle()),
              Text('Ванільний цукор -15 г', style: usualTextStyle()),
              Text('Підсолоджувач - за смаком', style: usualTextStyle()),
              Text('Творог - 400 г', style: usualTextStyle()),
              Text('Йогурт білий - 50 г', style: usualTextStyle())
            ],
          ),
        ],
      ),
    );
  }

  Widget _cookingSteps() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buildEatingTab('ПРОЦЕС ПРИГОТУВАННЯ', Colors.brown,
                    padding: 12, fontSize: 18),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                  leading: Icon(Icons.food_bank, color: Colors.brown),
                  title: Text(
                      'Відділяємо 3 жовтки і змішуємо з маслом та рисовим борошном, додамо підсолоджувач та замішуємо тісто)',
                      style: usualTextStyle())),
              ListTile(
                  leading: Icon(Icons.food_bank, color: Colors.brown),
                  title: Text(
                      'Збиваємо йогурт та творог до однорідної маси^ Додаємо ванільний цукор та підсолоджувач)',
                      style: usualTextStyle())),
              ListTile(
                  leading: Icon(Icons.food_bank, color: Colors.brown),
                  title: Text(
                      'Окремо збиваємо до піків білки і помірно вводимо у творожну мас',
                      style: usualTextStyle())),
              ListTile(
                  leading: Icon(Icons.food_bank, color: Colors.brown),
                  title: Text(
                      'Форму змащуємо кокосовим або вершковим маслом, розділяємо тісто на дві частини) Першу формуємо на дно і викладаємо творожну суміш, зверху іншу частину тіста ділимо на крихти і посипаємо зверху',
                      style: usualTextStyle())),
              ListTile(
                  leading: Icon(Icons.food_bank, color: Colors.brown),
                  title: Text('Випікаємо 40 хв - 200 градусів)',
                      style: usualTextStyle())),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle usualTextStyle() =>
      TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
}
