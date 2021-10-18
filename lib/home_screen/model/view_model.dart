class HomeViewModel {
  bool wipUser = true; //Purchased Account
  TopChoiceType topChoiceType = TopChoiceType.all;
  List<String> appliedFilters = [];
}

enum TopChoiceType { all, breakfast, lunch, dinner, supper, free }
