import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';


class UserRepositoryImpl extends UserRepository{
  @override
  Future<List<int>> getFavouriteRecipes() async {
    // this is stub
    return [10, 100, 101];
  }
}