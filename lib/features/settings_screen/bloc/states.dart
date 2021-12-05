part of 'bloc.dart';

@freezed
class CalorieMenuState with _$CalorieMenuState {
  const factory CalorieMenuState.initial() = CalorieMenuStateInitial;
  const factory CalorieMenuState.loading() = CalorieMenuStateLoading;
  const factory CalorieMenuState.loaded(CalorieMenuBaseModel menu) = CalorieMenuStateLoaded;
}