import 'package:cook_book_fat_killers/common/error/failure.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:dartz/dartz.dart';

abstract class BooksRepository {
  Future<Either<Failure, CookBook>> getCookBook(
      {required TopChoiceType topChoiceType});
}
