// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeEventSearch search() {
    return const HomeEventSearch();
  }

  HomeEventFavourites favourites() {
    return const HomeEventFavourites();
  }

  HomeEventTopChoiceChanged topChoiceChanged(TopChoiceType type) {
    return HomeEventTopChoiceChanged(
      type,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function() favourites,
    required TResult Function(TopChoiceType type) topChoiceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSearch value) search,
    required TResult Function(HomeEventFavourites value) favourites,
    required TResult Function(HomeEventTopChoiceChanged value) topChoiceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $HomeEventSearchCopyWith<$Res> {
  factory $HomeEventSearchCopyWith(
          HomeEventSearch value, $Res Function(HomeEventSearch) then) =
      _$HomeEventSearchCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventSearchCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventSearchCopyWith<$Res> {
  _$HomeEventSearchCopyWithImpl(
      HomeEventSearch _value, $Res Function(HomeEventSearch) _then)
      : super(_value, (v) => _then(v as HomeEventSearch));

  @override
  HomeEventSearch get _value => super._value as HomeEventSearch;
}

/// @nodoc

class _$HomeEventSearch implements HomeEventSearch {
  const _$HomeEventSearch();

  @override
  String toString() {
    return 'HomeEvent.search()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEventSearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function() favourites,
    required TResult Function(TopChoiceType type) topChoiceChanged,
  }) {
    return search();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
  }) {
    return search?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSearch value) search,
    required TResult Function(HomeEventFavourites value) favourites,
    required TResult Function(HomeEventTopChoiceChanged value) topChoiceChanged,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class HomeEventSearch implements HomeEvent {
  const factory HomeEventSearch() = _$HomeEventSearch;
}

/// @nodoc
abstract class $HomeEventFavouritesCopyWith<$Res> {
  factory $HomeEventFavouritesCopyWith(
          HomeEventFavourites value, $Res Function(HomeEventFavourites) then) =
      _$HomeEventFavouritesCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventFavouritesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventFavouritesCopyWith<$Res> {
  _$HomeEventFavouritesCopyWithImpl(
      HomeEventFavourites _value, $Res Function(HomeEventFavourites) _then)
      : super(_value, (v) => _then(v as HomeEventFavourites));

  @override
  HomeEventFavourites get _value => super._value as HomeEventFavourites;
}

/// @nodoc

class _$HomeEventFavourites implements HomeEventFavourites {
  const _$HomeEventFavourites();

  @override
  String toString() {
    return 'HomeEvent.favourites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeEventFavourites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function() favourites,
    required TResult Function(TopChoiceType type) topChoiceChanged,
  }) {
    return favourites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
  }) {
    return favourites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
    required TResult orElse(),
  }) {
    if (favourites != null) {
      return favourites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSearch value) search,
    required TResult Function(HomeEventFavourites value) favourites,
    required TResult Function(HomeEventTopChoiceChanged value) topChoiceChanged,
  }) {
    return favourites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
  }) {
    return favourites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
    required TResult orElse(),
  }) {
    if (favourites != null) {
      return favourites(this);
    }
    return orElse();
  }
}

abstract class HomeEventFavourites implements HomeEvent {
  const factory HomeEventFavourites() = _$HomeEventFavourites;
}

/// @nodoc
abstract class $HomeEventTopChoiceChangedCopyWith<$Res> {
  factory $HomeEventTopChoiceChangedCopyWith(HomeEventTopChoiceChanged value,
          $Res Function(HomeEventTopChoiceChanged) then) =
      _$HomeEventTopChoiceChangedCopyWithImpl<$Res>;
  $Res call({TopChoiceType type});
}

/// @nodoc
class _$HomeEventTopChoiceChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventTopChoiceChangedCopyWith<$Res> {
  _$HomeEventTopChoiceChangedCopyWithImpl(HomeEventTopChoiceChanged _value,
      $Res Function(HomeEventTopChoiceChanged) _then)
      : super(_value, (v) => _then(v as HomeEventTopChoiceChanged));

  @override
  HomeEventTopChoiceChanged get _value =>
      super._value as HomeEventTopChoiceChanged;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(HomeEventTopChoiceChanged(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
    ));
  }
}

/// @nodoc

class _$HomeEventTopChoiceChanged implements HomeEventTopChoiceChanged {
  const _$HomeEventTopChoiceChanged(this.type);

  @override
  final TopChoiceType type;

  @override
  String toString() {
    return 'HomeEvent.topChoiceChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEventTopChoiceChanged &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  $HomeEventTopChoiceChangedCopyWith<HomeEventTopChoiceChanged> get copyWith =>
      _$HomeEventTopChoiceChangedCopyWithImpl<HomeEventTopChoiceChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() search,
    required TResult Function() favourites,
    required TResult Function(TopChoiceType type) topChoiceChanged,
  }) {
    return topChoiceChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
  }) {
    return topChoiceChanged?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? search,
    TResult Function()? favourites,
    TResult Function(TopChoiceType type)? topChoiceChanged,
    required TResult orElse(),
  }) {
    if (topChoiceChanged != null) {
      return topChoiceChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSearch value) search,
    required TResult Function(HomeEventFavourites value) favourites,
    required TResult Function(HomeEventTopChoiceChanged value) topChoiceChanged,
  }) {
    return topChoiceChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
  }) {
    return topChoiceChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    TResult Function(HomeEventFavourites value)? favourites,
    TResult Function(HomeEventTopChoiceChanged value)? topChoiceChanged,
    required TResult orElse(),
  }) {
    if (topChoiceChanged != null) {
      return topChoiceChanged(this);
    }
    return orElse();
  }
}

abstract class HomeEventTopChoiceChanged implements HomeEvent {
  const factory HomeEventTopChoiceChanged(TopChoiceType type) =
      _$HomeEventTopChoiceChanged;

  TopChoiceType get type;
  @JsonKey(ignore: true)
  $HomeEventTopChoiceChangedCopyWith<HomeEventTopChoiceChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeStateInitial initial(TopChoiceType topChoiceType,
      {required bool isFavourites}) {
    return HomeStateInitial(
      topChoiceType,
      isFavourites: isFavourites,
    );
  }

  HomeStateEmpty empty(TopChoiceType topChoiceType,
      {required bool isFavourites}) {
    return HomeStateEmpty(
      topChoiceType,
      isFavourites: isFavourites,
    );
  }

  HomeStateLoading loading(TopChoiceType topChoiceType,
      {required bool isFavourites}) {
    return HomeStateLoading(
      topChoiceType,
      isFavourites: isFavourites,
    );
  }

  HomeStateError error(
      {required String message,
      required TopChoiceType topChoiceType,
      required bool isFavourites}) {
    return HomeStateError(
      message: message,
      topChoiceType: topChoiceType,
      isFavourites: isFavourites,
    );
  }

  HomeStateLoaded loaded(
      {required CookBook cookBook,
      required TopChoiceType topChoiceType,
      required bool isFavourites}) {
    return HomeStateLoaded(
      cookBook: cookBook,
      topChoiceType: topChoiceType,
      isFavourites: isFavourites,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  TopChoiceType get topChoiceType => throw _privateConstructorUsedError;
  bool get isFavourites => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        initial,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        empty,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        loading,
    required TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)
        error,
    required TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({TopChoiceType topChoiceType, bool isFavourites});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? topChoiceType = freezed,
    Object? isFavourites = freezed,
  }) {
    return _then(_value.copyWith(
      topChoiceType: topChoiceType == freezed
          ? _value.topChoiceType
          : topChoiceType // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
      isFavourites: isFavourites == freezed
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $HomeStateInitialCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeStateInitialCopyWith(
          HomeStateInitial value, $Res Function(HomeStateInitial) then) =
      _$HomeStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({TopChoiceType topChoiceType, bool isFavourites});
}

/// @nodoc
class _$HomeStateInitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateInitialCopyWith<$Res> {
  _$HomeStateInitialCopyWithImpl(
      HomeStateInitial _value, $Res Function(HomeStateInitial) _then)
      : super(_value, (v) => _then(v as HomeStateInitial));

  @override
  HomeStateInitial get _value => super._value as HomeStateInitial;

  @override
  $Res call({
    Object? topChoiceType = freezed,
    Object? isFavourites = freezed,
  }) {
    return _then(HomeStateInitial(
      topChoiceType == freezed
          ? _value.topChoiceType
          : topChoiceType // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
      isFavourites: isFavourites == freezed
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateInitial implements HomeStateInitial {
  const _$HomeStateInitial(this.topChoiceType, {required this.isFavourites});

  @override
  final TopChoiceType topChoiceType;
  @override
  final bool isFavourites;

  @override
  String toString() {
    return 'HomeState.initial(topChoiceType: $topChoiceType, isFavourites: $isFavourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateInitial &&
            (identical(other.topChoiceType, topChoiceType) ||
                other.topChoiceType == topChoiceType) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topChoiceType, isFavourites);

  @JsonKey(ignore: true)
  @override
  $HomeStateInitialCopyWith<HomeStateInitial> get copyWith =>
      _$HomeStateInitialCopyWithImpl<HomeStateInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        initial,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        empty,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        loading,
    required TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)
        error,
    required TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)
        loaded,
  }) {
    return initial(topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
  }) {
    return initial?.call(topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(topChoiceType, isFavourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitial implements HomeState {
  const factory HomeStateInitial(TopChoiceType topChoiceType,
      {required bool isFavourites}) = _$HomeStateInitial;

  @override
  TopChoiceType get topChoiceType;
  @override
  bool get isFavourites;
  @override
  @JsonKey(ignore: true)
  $HomeStateInitialCopyWith<HomeStateInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateEmptyCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeStateEmptyCopyWith(
          HomeStateEmpty value, $Res Function(HomeStateEmpty) then) =
      _$HomeStateEmptyCopyWithImpl<$Res>;
  @override
  $Res call({TopChoiceType topChoiceType, bool isFavourites});
}

/// @nodoc
class _$HomeStateEmptyCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateEmptyCopyWith<$Res> {
  _$HomeStateEmptyCopyWithImpl(
      HomeStateEmpty _value, $Res Function(HomeStateEmpty) _then)
      : super(_value, (v) => _then(v as HomeStateEmpty));

  @override
  HomeStateEmpty get _value => super._value as HomeStateEmpty;

  @override
  $Res call({
    Object? topChoiceType = freezed,
    Object? isFavourites = freezed,
  }) {
    return _then(HomeStateEmpty(
      topChoiceType == freezed
          ? _value.topChoiceType
          : topChoiceType // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
      isFavourites: isFavourites == freezed
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateEmpty implements HomeStateEmpty {
  const _$HomeStateEmpty(this.topChoiceType, {required this.isFavourites});

  @override
  final TopChoiceType topChoiceType;
  @override
  final bool isFavourites;

  @override
  String toString() {
    return 'HomeState.empty(topChoiceType: $topChoiceType, isFavourites: $isFavourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateEmpty &&
            (identical(other.topChoiceType, topChoiceType) ||
                other.topChoiceType == topChoiceType) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topChoiceType, isFavourites);

  @JsonKey(ignore: true)
  @override
  $HomeStateEmptyCopyWith<HomeStateEmpty> get copyWith =>
      _$HomeStateEmptyCopyWithImpl<HomeStateEmpty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        initial,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        empty,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        loading,
    required TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)
        error,
    required TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)
        loaded,
  }) {
    return empty(topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
  }) {
    return empty?.call(topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(topChoiceType, isFavourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class HomeStateEmpty implements HomeState {
  const factory HomeStateEmpty(TopChoiceType topChoiceType,
      {required bool isFavourites}) = _$HomeStateEmpty;

  @override
  TopChoiceType get topChoiceType;
  @override
  bool get isFavourites;
  @override
  @JsonKey(ignore: true)
  $HomeStateEmptyCopyWith<HomeStateEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateLoadingCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeStateLoadingCopyWith(
          HomeStateLoading value, $Res Function(HomeStateLoading) then) =
      _$HomeStateLoadingCopyWithImpl<$Res>;
  @override
  $Res call({TopChoiceType topChoiceType, bool isFavourites});
}

/// @nodoc
class _$HomeStateLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateLoadingCopyWith<$Res> {
  _$HomeStateLoadingCopyWithImpl(
      HomeStateLoading _value, $Res Function(HomeStateLoading) _then)
      : super(_value, (v) => _then(v as HomeStateLoading));

  @override
  HomeStateLoading get _value => super._value as HomeStateLoading;

  @override
  $Res call({
    Object? topChoiceType = freezed,
    Object? isFavourites = freezed,
  }) {
    return _then(HomeStateLoading(
      topChoiceType == freezed
          ? _value.topChoiceType
          : topChoiceType // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
      isFavourites: isFavourites == freezed
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateLoading implements HomeStateLoading {
  const _$HomeStateLoading(this.topChoiceType, {required this.isFavourites});

  @override
  final TopChoiceType topChoiceType;
  @override
  final bool isFavourites;

  @override
  String toString() {
    return 'HomeState.loading(topChoiceType: $topChoiceType, isFavourites: $isFavourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateLoading &&
            (identical(other.topChoiceType, topChoiceType) ||
                other.topChoiceType == topChoiceType) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topChoiceType, isFavourites);

  @JsonKey(ignore: true)
  @override
  $HomeStateLoadingCopyWith<HomeStateLoading> get copyWith =>
      _$HomeStateLoadingCopyWithImpl<HomeStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        initial,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        empty,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        loading,
    required TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)
        error,
    required TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)
        loaded,
  }) {
    return loading(topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
  }) {
    return loading?.call(topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(topChoiceType, isFavourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  const factory HomeStateLoading(TopChoiceType topChoiceType,
      {required bool isFavourites}) = _$HomeStateLoading;

  @override
  TopChoiceType get topChoiceType;
  @override
  bool get isFavourites;
  @override
  @JsonKey(ignore: true)
  $HomeStateLoadingCopyWith<HomeStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateErrorCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeStateErrorCopyWith(
          HomeStateError value, $Res Function(HomeStateError) then) =
      _$HomeStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message, TopChoiceType topChoiceType, bool isFavourites});
}

/// @nodoc
class _$HomeStateErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateErrorCopyWith<$Res> {
  _$HomeStateErrorCopyWithImpl(
      HomeStateError _value, $Res Function(HomeStateError) _then)
      : super(_value, (v) => _then(v as HomeStateError));

  @override
  HomeStateError get _value => super._value as HomeStateError;

  @override
  $Res call({
    Object? message = freezed,
    Object? topChoiceType = freezed,
    Object? isFavourites = freezed,
  }) {
    return _then(HomeStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      topChoiceType: topChoiceType == freezed
          ? _value.topChoiceType
          : topChoiceType // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
      isFavourites: isFavourites == freezed
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateError implements HomeStateError {
  const _$HomeStateError(
      {required this.message,
      required this.topChoiceType,
      required this.isFavourites});

  @override
  final String message;
  @override
  final TopChoiceType topChoiceType;
  @override
  final bool isFavourites;

  @override
  String toString() {
    return 'HomeState.error(message: $message, topChoiceType: $topChoiceType, isFavourites: $isFavourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateError &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.topChoiceType, topChoiceType) ||
                other.topChoiceType == topChoiceType) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, topChoiceType, isFavourites);

  @JsonKey(ignore: true)
  @override
  $HomeStateErrorCopyWith<HomeStateError> get copyWith =>
      _$HomeStateErrorCopyWithImpl<HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        initial,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        empty,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        loading,
    required TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)
        error,
    required TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)
        loaded,
  }) {
    return error(message, topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
  }) {
    return error?.call(message, topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, topChoiceType, isFavourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeStateError implements HomeState {
  const factory HomeStateError(
      {required String message,
      required TopChoiceType topChoiceType,
      required bool isFavourites}) = _$HomeStateError;

  String get message;
  @override
  TopChoiceType get topChoiceType;
  @override
  bool get isFavourites;
  @override
  @JsonKey(ignore: true)
  $HomeStateErrorCopyWith<HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateLoadedCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory $HomeStateLoadedCopyWith(
          HomeStateLoaded value, $Res Function(HomeStateLoaded) then) =
      _$HomeStateLoadedCopyWithImpl<$Res>;
  @override
  $Res call(
      {CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites});
}

/// @nodoc
class _$HomeStateLoadedCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateLoadedCopyWith<$Res> {
  _$HomeStateLoadedCopyWithImpl(
      HomeStateLoaded _value, $Res Function(HomeStateLoaded) _then)
      : super(_value, (v) => _then(v as HomeStateLoaded));

  @override
  HomeStateLoaded get _value => super._value as HomeStateLoaded;

  @override
  $Res call({
    Object? cookBook = freezed,
    Object? topChoiceType = freezed,
    Object? isFavourites = freezed,
  }) {
    return _then(HomeStateLoaded(
      cookBook: cookBook == freezed
          ? _value.cookBook
          : cookBook // ignore: cast_nullable_to_non_nullable
              as CookBook,
      topChoiceType: topChoiceType == freezed
          ? _value.topChoiceType
          : topChoiceType // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
      isFavourites: isFavourites == freezed
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeStateLoaded implements HomeStateLoaded {
  const _$HomeStateLoaded(
      {required this.cookBook,
      required this.topChoiceType,
      required this.isFavourites});

  @override
  final CookBook cookBook;
  @override
  final TopChoiceType topChoiceType;
  @override
  final bool isFavourites;

  @override
  String toString() {
    return 'HomeState.loaded(cookBook: $cookBook, topChoiceType: $topChoiceType, isFavourites: $isFavourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateLoaded &&
            (identical(other.cookBook, cookBook) ||
                other.cookBook == cookBook) &&
            (identical(other.topChoiceType, topChoiceType) ||
                other.topChoiceType == topChoiceType) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cookBook, topChoiceType, isFavourites);

  @JsonKey(ignore: true)
  @override
  $HomeStateLoadedCopyWith<HomeStateLoaded> get copyWith =>
      _$HomeStateLoadedCopyWithImpl<HomeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        initial,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        empty,
    required TResult Function(TopChoiceType topChoiceType, bool isFavourites)
        loading,
    required TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)
        error,
    required TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)
        loaded,
  }) {
    return loaded(cookBook, topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
  }) {
    return loaded?.call(cookBook, topChoiceType, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? initial,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? empty,
    TResult Function(TopChoiceType topChoiceType, bool isFavourites)? loading,
    TResult Function(
            String message, TopChoiceType topChoiceType, bool isFavourites)?
        error,
    TResult Function(
            CookBook cookBook, TopChoiceType topChoiceType, bool isFavourites)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cookBook, topChoiceType, isFavourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInitial value) initial,
    required TResult Function(HomeStateEmpty value) empty,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateError value) error,
    required TResult Function(HomeStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInitial value)? initial,
    TResult Function(HomeStateEmpty value)? empty,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateError value)? error,
    TResult Function(HomeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoaded implements HomeState {
  const factory HomeStateLoaded(
      {required CookBook cookBook,
      required TopChoiceType topChoiceType,
      required bool isFavourites}) = _$HomeStateLoaded;

  CookBook get cookBook;
  @override
  TopChoiceType get topChoiceType;
  @override
  bool get isFavourites;
  @override
  @JsonKey(ignore: true)
  $HomeStateLoadedCopyWith<HomeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
