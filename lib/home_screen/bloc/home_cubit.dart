import 'package:cook_book_fat_killers/common/error/failure.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:cook_book_fat_killers/home_screen/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CookBookCubit extends Cubit<CookBookState> {
  final BooksRepository booksRepository;

  CookBookCubit({required this.booksRepository}) : super(CookBookEmpty());

  void loadCookBook(TopChoiceType type) async {
    if (state is CookBookLoading) return;

    emit(CookBookLoading());

    final failureOrCookBook =
        await booksRepository.getCookBook(topChoiceType: type);

    failureOrCookBook.fold(
      (failure) => emit(CookBookError(message: _mapFailureToMessage(failure))),
      (cookbook) => emit(CookBookLoaded(cookbook)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'ServerFailure';
      case CacheFailure:
        return 'CacheFailure';
      default:
        return 'Unknown failure';
    }
  }
}
