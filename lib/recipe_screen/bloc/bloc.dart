import 'dart:async';

import 'package:cook_book_fat_killers/di/di.dart';
import 'package:cook_book_fat_killers/domain/models/recipe.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/home_screen/bloc/home_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'events.dart';
part 'states.dart';
part 'bloc.freezed.dart';

class RecipeBloc {
  late UserRepository repository;
  RecipeState _state = RecipeState.initial();

  final _inputEventController = StreamController<RecipeEvent>();
  final _outputStateController = StreamController<RecipeState>();

  StreamSink<RecipeEvent> get inputsSink => _inputEventController.sink;
  Stream<RecipeState> get outputsStream => _outputStateController.stream;

  RecipeBloc() {
    repository = sl<UserRepository>();
    _inputEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(RecipeEvent event) async {
    if (_state is RecipeStateLoading) return;

    if (event is RecipeEventShow) {
      final recipeModel = event.recipeModel;
      _emit(const RecipeState.loading());
      final checked = await repository.isFavourites(recipeModel.recipeId);
      _emit(RecipeState.loaded(recipe: recipeModel, isFavourites: checked));
    }

    if (event is RecipeEventToggle) {
      final recipeModel = event.recipeModel;
      _emit( RecipeState.loading());
      final selected = event.selected;
      await repository.toggle(recipeModel.recipeId, selected);
      _emit(RecipeState.loaded(recipe: recipeModel, isFavourites: selected));
      await sl<HomeBloc>().reloadFavourites();
    }
  }

  void _emit(RecipeState state) {
    _outputStateController.add(state);
    _state = state;
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }
}
