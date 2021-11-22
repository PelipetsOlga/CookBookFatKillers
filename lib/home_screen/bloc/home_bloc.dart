import 'package:cook_book_fat_killers/common/error/failure.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final BooksRepository booksRepository;

  HomeBloc({required this.booksRepository}) : super(const HomeState.initial()) {
    on<HomeEventSearch>((event, emit) async {
      if (state is HomeStateLoading) return;
      final failureOrCookBook =
          await booksRepository.getCookBook(topChoiceType: event.type);
      failureOrCookBook.fold(
          (failure) =>
              emit(HomeState.error(message: mapFailureToMessage(failure))),
          (results) => results.recipes.isEmpty
              ? emit(HomeState.empty())
              : emit(HomeState.loaded(cookBook: results)));
    });
  }
}

String mapFailureToMessage(Failure failure) {
  switch (failure.runtimeType) {
    case ServerFailure:
      return 'ServerFailure';
    case CacheFailure:
      return 'CacheFailure';
    default:
      return 'Unknown failure';
  }
}
