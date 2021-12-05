part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent{
  const factory HomeEvent.search() = HomeEventSearch;
  const factory HomeEvent.favourites() = HomeEventFavourites;
  const factory HomeEvent.topChoiceChanged(TopChoiceType type) = HomeEventTopChoiceChanged;
}