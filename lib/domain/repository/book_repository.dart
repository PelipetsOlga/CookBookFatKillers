import 'package:cook_book_fat_killers/domain/models/book.dart';

abstract class BooksRepository {
  Future<CookBook> getCookBook({bool isFree, bool isFiltered});
}