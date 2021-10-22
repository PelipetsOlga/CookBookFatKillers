enum EatingType { breakfast, lunch, dinner, supper }

abstract class EatingTypeBase {
  abstract EatingType eatingType;
  abstract String title;
}

class BreakfastEatingTypeModel extends EatingTypeBase {

  @override
  EatingType eatingType = EatingType.breakfast;

  @override
  String title = 'breakfast';
}

class LunchEatingTypeModel extends EatingTypeBase {

  @override
  EatingType eatingType = EatingType.lunch;

  @override
  String title = 'lunch';
}

class DinnerEatingTypeModel extends EatingTypeBase {

  @override
  EatingType eatingType = EatingType.dinner;

  @override
  String title = 'dinner';
}

class SupperEatingTypeModel extends EatingTypeBase {

  @override
  EatingType eatingType = EatingType.supper;

  @override
  String title = 'supper';
}
