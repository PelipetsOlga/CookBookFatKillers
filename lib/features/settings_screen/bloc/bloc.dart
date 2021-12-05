import 'dart:async';

import 'package:cook_book_fat_killers/di/di.dart';
import 'package:cook_book_fat_killers/domain/models/calorie.dart';
import 'package:cook_book_fat_killers/domain/repository/user_repository.dart';
import 'package:cook_book_fat_killers/features/home_screen/bloc/home_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc.freezed.dart';

part 'states.dart';

part 'events.dart';

class CalorieMenuBloc {
  late UserRepository repository;
  CalorieMenuState _state = CalorieMenuState.initial();

  final _inputEventController = StreamController<CalorieMenuEvent>();
  final _outputStateController = StreamController<CalorieMenuState>();

  StreamSink<CalorieMenuEvent> get inputsSink => _inputEventController.sink;

  Stream<CalorieMenuState> get outputsStream => _outputStateController.stream;

  CalorieMenuBloc() {
    repository = sl<UserRepository>();
    _inputEventController.stream.listen(_mapEventToState);
  }

  void _mapEventToState(CalorieMenuEvent event) async {
    if (_state is CalorieMenuStateLoading) return;

    if (event is CalorieMenuEventShow) {
      _emit(const CalorieMenuState.loading());
      final menu = await repository.getCalorieMenu();
      _emit(CalorieMenuState.loaded(menu));
    }

    if (event is CalorieMenuEventSet) {
      final newMenu = event.menu;
      _emit(const CalorieMenuState.loading());
      await repository.setCalorieMenu(newMenu);
      final menu = await repository.getCalorieMenu();
      await sl<HomeBloc>().reload();
      _emit(CalorieMenuState.loaded(menu));
    }
  }

  void _emit(CalorieMenuState state) {
    _outputStateController.add(state);
    _state = state;
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }
}
