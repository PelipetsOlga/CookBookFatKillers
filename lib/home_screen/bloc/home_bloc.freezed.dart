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

  HomeEventSearch search(TopChoiceType type) {
    return HomeEventSearch(
      type,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  TopChoiceType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType type) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType type)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType type)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSearch value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({TopChoiceType type});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
    ));
  }
}

/// @nodoc
abstract class $HomeEventSearchCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory $HomeEventSearchCopyWith(
          HomeEventSearch value, $Res Function(HomeEventSearch) then) =
      _$HomeEventSearchCopyWithImpl<$Res>;
  @override
  $Res call({TopChoiceType type});
}

/// @nodoc
class _$HomeEventSearchCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeEventSearchCopyWith<$Res> {
  _$HomeEventSearchCopyWithImpl(
      HomeEventSearch _value, $Res Function(HomeEventSearch) _then)
      : super(_value, (v) => _then(v as HomeEventSearch));

  @override
  HomeEventSearch get _value => super._value as HomeEventSearch;

  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(HomeEventSearch(
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TopChoiceType,
    ));
  }
}

/// @nodoc

class _$HomeEventSearch implements HomeEventSearch {
  const _$HomeEventSearch(this.type);

  @override
  final TopChoiceType type;

  @override
  String toString() {
    return 'HomeEvent.search(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeEventSearch &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  $HomeEventSearchCopyWith<HomeEventSearch> get copyWith =>
      _$HomeEventSearchCopyWithImpl<HomeEventSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TopChoiceType type) search,
  }) {
    return search(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TopChoiceType type)? search,
  }) {
    return search?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TopChoiceType type)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventSearch value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventSearch value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class HomeEventSearch implements HomeEvent {
  const factory HomeEventSearch(TopChoiceType type) = _$HomeEventSearch;

  @override
  TopChoiceType get type;
  @override
  @JsonKey(ignore: true)
  $HomeEventSearchCopyWith<HomeEventSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeStateInitial initial() {
    return const HomeStateInitial();
  }

  HomeStateEmpty empty() {
    return const HomeStateEmpty();
  }

  HomeStateLoading loading() {
    return const HomeStateLoading();
  }

  HomeStateError error({required String message}) {
    return HomeStateError(
      message: message,
    );
  }

  HomeStateLoaded loaded({required CookBook cookBook}) {
    return HomeStateLoaded(
      cookBook: cookBook,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(CookBook cookBook) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
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
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class $HomeStateInitialCopyWith<$Res> {
  factory $HomeStateInitialCopyWith(
          HomeStateInitial value, $Res Function(HomeStateInitial) then) =
      _$HomeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateInitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateInitialCopyWith<$Res> {
  _$HomeStateInitialCopyWithImpl(
      HomeStateInitial _value, $Res Function(HomeStateInitial) _then)
      : super(_value, (v) => _then(v as HomeStateInitial));

  @override
  HomeStateInitial get _value => super._value as HomeStateInitial;
}

/// @nodoc

class _$HomeStateInitial implements HomeStateInitial {
  const _$HomeStateInitial();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(CookBook cookBook) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
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
  const factory HomeStateInitial() = _$HomeStateInitial;
}

/// @nodoc
abstract class $HomeStateEmptyCopyWith<$Res> {
  factory $HomeStateEmptyCopyWith(
          HomeStateEmpty value, $Res Function(HomeStateEmpty) then) =
      _$HomeStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateEmptyCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateEmptyCopyWith<$Res> {
  _$HomeStateEmptyCopyWithImpl(
      HomeStateEmpty _value, $Res Function(HomeStateEmpty) _then)
      : super(_value, (v) => _then(v as HomeStateEmpty));

  @override
  HomeStateEmpty get _value => super._value as HomeStateEmpty;
}

/// @nodoc

class _$HomeStateEmpty implements HomeStateEmpty {
  const _$HomeStateEmpty();

  @override
  String toString() {
    return 'HomeState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(CookBook cookBook) loaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
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
  const factory HomeStateEmpty() = _$HomeStateEmpty;
}

/// @nodoc
abstract class $HomeStateLoadingCopyWith<$Res> {
  factory $HomeStateLoadingCopyWith(
          HomeStateLoading value, $Res Function(HomeStateLoading) then) =
      _$HomeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateLoadingCopyWith<$Res> {
  _$HomeStateLoadingCopyWithImpl(
      HomeStateLoading _value, $Res Function(HomeStateLoading) _then)
      : super(_value, (v) => _then(v as HomeStateLoading));

  @override
  HomeStateLoading get _value => super._value as HomeStateLoading;
}

/// @nodoc

class _$HomeStateLoading implements HomeStateLoading {
  const _$HomeStateLoading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(CookBook cookBook) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
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
  const factory HomeStateLoading() = _$HomeStateLoading;
}

/// @nodoc
abstract class $HomeStateErrorCopyWith<$Res> {
  factory $HomeStateErrorCopyWith(
          HomeStateError value, $Res Function(HomeStateError) then) =
      _$HomeStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
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
  }) {
    return _then(HomeStateError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeStateError implements HomeStateError {
  const _$HomeStateError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  $HomeStateErrorCopyWith<HomeStateError> get copyWith =>
      _$HomeStateErrorCopyWithImpl<HomeStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(CookBook cookBook) loaded,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
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
  const factory HomeStateError({required String message}) = _$HomeStateError;

  String get message;
  @JsonKey(ignore: true)
  $HomeStateErrorCopyWith<HomeStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateLoadedCopyWith<$Res> {
  factory $HomeStateLoadedCopyWith(
          HomeStateLoaded value, $Res Function(HomeStateLoaded) then) =
      _$HomeStateLoadedCopyWithImpl<$Res>;
  $Res call({CookBook cookBook});
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
  }) {
    return _then(HomeStateLoaded(
      cookBook: cookBook == freezed
          ? _value.cookBook
          : cookBook // ignore: cast_nullable_to_non_nullable
              as CookBook,
    ));
  }
}

/// @nodoc

class _$HomeStateLoaded implements HomeStateLoaded {
  const _$HomeStateLoaded({required this.cookBook});

  @override
  final CookBook cookBook;

  @override
  String toString() {
    return 'HomeState.loaded(cookBook: $cookBook)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeStateLoaded &&
            (identical(other.cookBook, cookBook) ||
                other.cookBook == cookBook));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cookBook);

  @JsonKey(ignore: true)
  @override
  $HomeStateLoadedCopyWith<HomeStateLoaded> get copyWith =>
      _$HomeStateLoadedCopyWithImpl<HomeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(CookBook cookBook) loaded,
  }) {
    return loaded(cookBook);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
  }) {
    return loaded?.call(cookBook);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(CookBook cookBook)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(cookBook);
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
  const factory HomeStateLoaded({required CookBook cookBook}) =
      _$HomeStateLoaded;

  CookBook get cookBook;
  @JsonKey(ignore: true)
  $HomeStateLoadedCopyWith<HomeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
