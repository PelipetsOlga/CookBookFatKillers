enum CalorieMenu { menu1300, menu1450, menu1600, menu1900 }

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
}

class CalorieModel1450 extends CalorieMenuBaseModel {
  @override
  int calories = 1450;

  @override
  int id = 14;

  @override
  CalorieMenu menu = CalorieMenu.menu1450;
}

class CalorieModel1600 extends CalorieMenuBaseModel {
  @override
  int calories = 1600;

  @override
  int id = 16;

  @override
  CalorieMenu menu = CalorieMenu.menu1600;
}

class CalorieModel1900 extends CalorieMenuBaseModel {
  @override
  int calories = 1900;

  @override
  int id = 19;

  @override
  CalorieMenu menu = CalorieMenu.menu1900;
}
