part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial(TopChoiceType topChoiceType,
      {required bool isFavourites}) = HomeStateInitial;

  const factory HomeState.empty(TopChoiceType topChoiceType,
      {required bool isFavourites}) = HomeStateEmpty;

  const factory HomeState.loading(TopChoiceType topChoiceType,
      {required bool isFavourites}) = HomeStateLoading;

  const factory HomeState.error(
      {required String message,
      required TopChoiceType topChoiceType,
      required bool isFavourites}) = HomeStateError;

  const factory HomeState.loaded({
    required CookBook cookBook,
    required TopChoiceType topChoiceType,
    required bool isFavourites,
  }) = HomeStateLoaded;
}
