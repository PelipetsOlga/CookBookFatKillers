enum CalorieMenu { menu1300, menu1450, menu1600, menu1900 }

List<CalorieMenuBaseModel> allCalorieMenus = [
  CalorieModel1300(),
  CalorieModel1450(),
  CalorieModel1600(),
  CalorieModel1900(),
];

abstract class CalorieMenuBaseModel {
  abstract CalorieMenu menu;
  abstract int calories;
  abstract int id;
}

class CalorieModel1300 extends CalorieMenuBaseModel {
  @override
  int calories = 1300;

  @override
  int id = 13;

  @override
  CalorieMenu menu = CalorieMenu.menu1300;

  static final CalorieModel1300 _singleton = CalorieModel1300._internal();

  factory CalorieModel1300() {
    return _singleton;
  }

  CalorieModel1300._internal();
}

class CalorieModel1450 extends CalorieMenuBaseModel {
  @override
  int calories = 1450;

  @override
  int id = 14;

  @override
  CalorieMenu menu = CalorieMenu.menu1450;

  static final CalorieModel1450 _singleton = CalorieModel1450._internal();

  factory CalorieModel1450() {
    return _singleton;
  }

  CalorieModel1450._internal();
}

class CalorieModel1600 extends CalorieMenuBaseModel {
  @override
  int calories = 1600;

  @override
  int id = 16;

  @override
  CalorieMenu menu = CalorieMenu.menu1600;

  static final CalorieModel1600 _singleton = CalorieModel1600._internal();

  factory CalorieModel1600() {
    return _singleton;
  }

  CalorieModel1600._internal();
}

class CalorieModel1900 extends CalorieMenuBaseModel {
  @override
  int calories = 1900;

  @override
  int id = 19;

  @override
  CalorieMenu menu = CalorieMenu.menu1900;

  static final CalorieModel1900 _singleton = CalorieModel1900._internal();

  factory CalorieModel1900() {
    return _singleton;
  }

  CalorieModel1900._internal();
}
