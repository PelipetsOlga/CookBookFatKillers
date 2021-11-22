import 'package:cook_book_fat_killers/data/db/repository/book_repository_db.dart';
import 'package:cook_book_fat_killers/data/user/user_repo_pref.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/favourites/bloc/favourites_bloc.dart';
import 'package:cook_book_fat_killers/home_screen/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Bloc, Cubit
  sl.registerFactory(
    () => HomeBloc(booksRepository: sl()),
  );

  sl.registerFactory(
    () => FavouritesBloc(booksRepository: sl(), userRepository: sl()),
  );

  //Repository
  sl.registerLazySingleton<BooksRepository>(
    () => BooksRepositoryDb(),
  );

  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(),
  );
}
