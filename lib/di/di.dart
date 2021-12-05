import 'package:cook_book_fat_killers/data/db/repository/book_repository_db.dart';
import 'package:cook_book_fat_killers/data/user/user_repo_pref.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/features/home_screen/bloc/home_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Repository
  sl.registerLazySingleton<BooksRepository>(
    () => BooksRepositoryDb(),
  );

  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(),
  );

  //Bloc, Cubit
  sl.registerLazySingleton<HomeBloc>(
    () => HomeBloc(),
  );

  // sl.registerFactory<RecipeBloc>(
  //   () => RecipeBloc(),
  // );
}
