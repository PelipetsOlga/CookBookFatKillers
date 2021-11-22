part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState{
  const factory HomeState.initial() = HomeStateInitial;
  const factory HomeState.empty() = HomeStateEmpty;
  const factory HomeState.loading() = HomeStateLoading;
  const factory HomeState.error({required String message}) = HomeStateError;
  const factory HomeState.loaded({required CookBook cookBook}) = HomeStateLoaded;
}
