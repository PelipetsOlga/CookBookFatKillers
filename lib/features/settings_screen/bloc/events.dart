part of 'bloc.dart';

@freezed
class CalorieMenuEvent with _$CalorieMenuEvent {
  const factory CalorieMenuEvent.show() = CalorieMenuEventShow;

  const factory CalorieMenuEvent.set(CalorieMenuBaseModel menu) = CalorieMenuEventSet;
}