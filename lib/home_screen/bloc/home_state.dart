import 'package:cook_book_fat_killers/domain/models/book.dart';

abstract class CookBookState {
  const CookBookState();
}

class CookBookEmpty extends CookBookState {
  const CookBookEmpty();
}

class CookBookLoading extends CookBookState {
  const CookBookLoading();
}

class CookBookLoaded extends CookBookState {
  final CookBook cookBook;

  const CookBookLoaded(this.cookBook);
}

class CookBookError extends CookBookState {
  final String message;

  const CookBookError({required this.message});
}
