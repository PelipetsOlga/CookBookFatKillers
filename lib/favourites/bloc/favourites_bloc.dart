import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/home_screen/bloc/home_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritesBloc extends Bloc<HomeEvent, HomeState> {
  final BooksRepository booksRepository;
  final UserRepository userRepository;

  FavouritesBloc({required this.booksRepository, required this.userRepository})
      : super(HomeState.initial()) {
    on<HomeEventSearch>((event, emit) => loadFavourites());
  }

  void loadFavourites() async {
    if (state is HomeStateLoading) return;

    emit(const HomeStateLoading());

    final favouritesNumbers = await userRepository.getFavouriteRecipes();

    final failureOrCookBook = await booksRepository.getFavourites(
        favouritesNumbers: favouritesNumbers);

    failureOrCookBook.fold(
        (failure) =>
            emit(HomeStateError(message: mapFailureToMessage(failure))),
        (results) => results.recipes.isEmpty
            ? emit(HomeState.empty())
            : emit(HomeState.loaded(cookBook: results)));
  }
}
