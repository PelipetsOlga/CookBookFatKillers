import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:equatable/equatable.dart';

abstract class CookBookState extends Equatable {
  const CookBookState();

  @override
  List<Object?> get props => [];
}

class CookBookEmpty extends CookBookState {
  @override
  List<Object?> get props => [];
}

class CookBookLoading extends CookBookState {
  @override
  List<Object?> get props => [];
}

class CookBookLoaded extends CookBookState {
  final CookBook cookBook;

  CookBookLoaded(this.cookBook);

  @override
  List<Object?> get props => [cookBook];
}

class CookBookError extends CookBookState {
  final String message;

  CookBookError({required this.message});

  @override
  List<Object?> get props => [message];
}
