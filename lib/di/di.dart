import 'package:cook_book_fat_killers/data/db/repository/book_repository_db.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:cook_book_fat_killers/home_screen/bloc/home_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {

  //Bloc, Cubit
  sl.registerFactory(
        () => CookBookCubit(booksRepository: sl()),
  );

  //Repository
  sl.registerLazySingleton<BooksRepository>(
    () => BooksRepositoryDb(),
  );
}
