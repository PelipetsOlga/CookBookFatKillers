import 'dart:async';

import 'package:cook_book_fat_killers/common/error/failure.dart';
import 'package:cook_book_fat_killers/di/di.dart';
import 'package:cook_book_fat_killers/domain/models/book.dart';
import 'package:cook_book_fat_killers/domain/repository/book_repository.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

part 'top_choice_state.dart';

class HomeBloc {
  late BooksRepository booksRepository;
  late UserRepository userRepository;

  TopChoiceType _topChoiceType = TopChoiceType.all;
  HomeState _state = HomeState.initial(TopChoiceType.all, isFavourites: false);
  HomeEvent _lastEvent = const HomeEvent.search();
  bool _isFavourites = false;

  final _inputEventController = StreamController<HomeEvent>();
  final _outputStateController = StreamController<HomeState>();

  StreamSink<HomeEvent> get inputsSink => _inputEventController.sink;

  Stream<HomeState> get outputsStream => _outputStateController.stream;

  HomeBloc() {
    booksRepository = sl<BooksRepository>();
    userRepository = sl<UserRepository>();
    _inputEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(HomeEvent event) async {
    if (event is HomeEventSearch) {
      _lastEvent = event;
      _isFavourites = false;
    } else if (event is HomeEventFavourites) {
      _lastEvent = event;
      _isFavourites = true;
    }

    if (event is HomeEventSearch) {
      _loadAllRecipes();
    } else if (event is HomeEventFavourites) {
      _loadFavourites();
    } else if (event is HomeEventTopChoiceChanged) {
      if (_topChoiceType == event.type) return;
      _topChoiceType = event.type;

      if (_lastEvent is HomeEventSearch) {
        _lastEvent = HomeEvent.search();
      } else if (_lastEvent is HomeEventFavourites) {
        _lastEvent = HomeEvent.favourites();
      }
      reload();
    }
  }

  _loadAllRecipes() async {
    if (_state is HomeStateLoading) return;

    _emit(HomeState.loading(_topChoiceType, isFavourites: _isFavourites));

    final failureOrCookBook =
        await booksRepository.getCookBook(topChoiceType: _topChoiceType);

    failureOrCookBook.fold(
        (failure) => _emit(HomeStateError(
            message: _mapFailureToMessage(failure),
            topChoiceType: _topChoiceType,
            isFavourites: _isFavourites)),
        (results) => results.recipes.isEmpty
            ? _emit(
                HomeState.empty(_topChoiceType, isFavourites: _isFavourites))
            : _emit(HomeState.loaded(
                cookBook: results,
                topChoiceType: _topChoiceType,
                isFavourites: false,
              )));
  }

  _loadFavourites() async {
    if (_state is HomeStateLoading) return;

    _emit(HomeState.loading(_topChoiceType, isFavourites: _isFavourites));

    final favouritesNumbers = await userRepository.getFavouriteRecipes();

    final failureOrCookBook = await booksRepository.getFavourites(
        favouritesNumbers: favouritesNumbers);

    failureOrCookBook.fold(
        (failure) => _emit(HomeStateError(
            message: _mapFailureToMessage(failure),
            topChoiceType: _topChoiceType,
            isFavourites: _isFavourites)),
        (results) => results.recipes.isEmpty
            ? _emit(
                HomeState.empty(_topChoiceType, isFavourites: _isFavourites))
            : _emit(HomeState.loaded(
                cookBook: results,
                topChoiceType: _topChoiceType,
                isFavourites: true,
              )));
  }

  void _emit(HomeState state) {
    _outputStateController.add(state);
    _state = state;
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }

  Future<void> reload() async {
    _mapEventToState(_lastEvent);
  }

  Future<void> reloadFavourites() async {
    if (_lastEvent is HomeEventFavourites) {
      _mapEventToState(_lastEvent);
    }
  }
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
