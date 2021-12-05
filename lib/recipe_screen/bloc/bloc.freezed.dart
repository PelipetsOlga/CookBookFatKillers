// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RecipeEventTearOff {
  const _$RecipeEventTearOff();

  RecipeEventShow show(RecipeModel recipeModel) {
    return RecipeEventShow(
      recipeModel,
    );
  }

  RecipeEventToggle toggle(
      {required bool selected, required RecipeModel recipeModel}) {
    return RecipeEventToggle(
      selected: selected,
      recipeModel: recipeModel,
    );
  }
}

/// @nodoc
const $RecipeEvent = _$RecipeEventTearOff();

/// @nodoc
mixin _$RecipeEvent {
  RecipeModel get recipeModel => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeModel recipeModel) show,
    required TResult Function(bool selected, RecipeModel recipeModel) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RecipeModel recipeModel)? show,
    TResult Function(bool selected, RecipeModel recipeModel)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeModel recipeModel)? show,
    TResult Function(bool selected, RecipeModel recipeModel)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeEventShow value) show,
    required TResult Function(RecipeEventToggle value) toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecipeEventShow value)? show,
    TResult Function(RecipeEventToggle value)? toggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeEventShow value)? show,
    TResult Function(RecipeEventToggle value)? toggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeEventCopyWith<RecipeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res>;
  $Res call({RecipeModel recipeModel});
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res> implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  final RecipeEvent _value;
  // ignore: unused_field
  final $Res Function(RecipeEvent) _then;

  @override
  $Res call({
    Object? recipeModel = freezed,
  }) {
    return _then(_value.copyWith(
      recipeModel: recipeModel == freezed
          ? _value.recipeModel
          : recipeModel // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ));
  }
}

/// @nodoc
abstract class $RecipeEventShowCopyWith<$Res>
    implements $RecipeEventCopyWith<$Res> {
  factory $RecipeEventShowCopyWith(
          RecipeEventShow value, $Res Function(RecipeEventShow) then) =
      _$RecipeEventShowCopyWithImpl<$Res>;
  @override
  $Res call({RecipeModel recipeModel});
}

/// @nodoc
class _$RecipeEventShowCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res>
    implements $RecipeEventShowCopyWith<$Res> {
  _$RecipeEventShowCopyWithImpl(
      RecipeEventShow _value, $Res Function(RecipeEventShow) _then)
      : super(_value, (v) => _then(v as RecipeEventShow));

  @override
  RecipeEventShow get _value => super._value as RecipeEventShow;

  @override
  $Res call({
    Object? recipeModel = freezed,
  }) {
    return _then(RecipeEventShow(
      recipeModel == freezed
          ? _value.recipeModel
          : recipeModel // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ));
  }
}

/// @nodoc

class _$RecipeEventShow implements RecipeEventShow {
  const _$RecipeEventShow(this.recipeModel);

  @override
  final RecipeModel recipeModel;

  @override
  String toString() {
    return 'RecipeEvent.show(recipeModel: $recipeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeEventShow &&
            (identical(other.recipeModel, recipeModel) ||
                other.recipeModel == recipeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeModel);

  @JsonKey(ignore: true)
  @override
  $RecipeEventShowCopyWith<RecipeEventShow> get copyWith =>
      _$RecipeEventShowCopyWithImpl<RecipeEventShow>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeModel recipeModel) show,
    required TResult Function(bool selected, RecipeModel recipeModel) toggle,
  }) {
    return show(recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RecipeModel recipeModel)? show,
    TResult Function(bool selected, RecipeModel recipeModel)? toggle,
  }) {
    return show?.call(recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeModel recipeModel)? show,
    TResult Function(bool selected, RecipeModel recipeModel)? toggle,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(recipeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeEventShow value) show,
    required TResult Function(RecipeEventToggle value) toggle,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecipeEventShow value)? show,
    TResult Function(RecipeEventToggle value)? toggle,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeEventShow value)? show,
    TResult Function(RecipeEventToggle value)? toggle,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class RecipeEventShow implements RecipeEvent {
  const factory RecipeEventShow(RecipeModel recipeModel) = _$RecipeEventShow;

  @override
  RecipeModel get recipeModel;
  @override
  @JsonKey(ignore: true)
  $RecipeEventShowCopyWith<RecipeEventShow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventToggleCopyWith<$Res>
    implements $RecipeEventCopyWith<$Res> {
  factory $RecipeEventToggleCopyWith(
          RecipeEventToggle value, $Res Function(RecipeEventToggle) then) =
      _$RecipeEventToggleCopyWithImpl<$Res>;
  @override
  $Res call({bool selected, RecipeModel recipeModel});
}

/// @nodoc
class _$RecipeEventToggleCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res>
    implements $RecipeEventToggleCopyWith<$Res> {
  _$RecipeEventToggleCopyWithImpl(
      RecipeEventToggle _value, $Res Function(RecipeEventToggle) _then)
      : super(_value, (v) => _then(v as RecipeEventToggle));

  @override
  RecipeEventToggle get _value => super._value as RecipeEventToggle;

  @override
  $Res call({
    Object? selected = freezed,
    Object? recipeModel = freezed,
  }) {
    return _then(RecipeEventToggle(
      selected: selected == freezed
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
      recipeModel: recipeModel == freezed
          ? _value.recipeModel
          : recipeModel // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
    ));
  }
}

/// @nodoc

class _$RecipeEventToggle implements RecipeEventToggle {
  const _$RecipeEventToggle(
      {required this.selected, required this.recipeModel});

  @override
  final bool selected;
  @override
  final RecipeModel recipeModel;

  @override
  String toString() {
    return 'RecipeEvent.toggle(selected: $selected, recipeModel: $recipeModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeEventToggle &&
            (identical(other.selected, selected) ||
                other.selected == selected) &&
            (identical(other.recipeModel, recipeModel) ||
                other.recipeModel == recipeModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected, recipeModel);

  @JsonKey(ignore: true)
  @override
  $RecipeEventToggleCopyWith<RecipeEventToggle> get copyWith =>
      _$RecipeEventToggleCopyWithImpl<RecipeEventToggle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(RecipeModel recipeModel) show,
    required TResult Function(bool selected, RecipeModel recipeModel) toggle,
  }) {
    return toggle(selected, recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(RecipeModel recipeModel)? show,
    TResult Function(bool selected, RecipeModel recipeModel)? toggle,
  }) {
    return toggle?.call(selected, recipeModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(RecipeModel recipeModel)? show,
    TResult Function(bool selected, RecipeModel recipeModel)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(selected, recipeModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeEventShow value) show,
    required TResult Function(RecipeEventToggle value) toggle,
  }) {
    return toggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecipeEventShow value)? show,
    TResult Function(RecipeEventToggle value)? toggle,
  }) {
    return toggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeEventShow value)? show,
    TResult Function(RecipeEventToggle value)? toggle,
    required TResult orElse(),
  }) {
    if (toggle != null) {
      return toggle(this);
    }
    return orElse();
  }
}

abstract class RecipeEventToggle implements RecipeEvent {
  const factory RecipeEventToggle(
      {required bool selected,
      required RecipeModel recipeModel}) = _$RecipeEventToggle;

  bool get selected;
  @override
  RecipeModel get recipeModel;
  @override
  @JsonKey(ignore: true)
  $RecipeEventToggleCopyWith<RecipeEventToggle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RecipeStateTearOff {
  const _$RecipeStateTearOff();

  RecipeStateInitial initial() {
    return const RecipeStateInitial();
  }

  RecipeStateLoading loading() {
    return const RecipeStateLoading();
  }

  RecipeStateLoaded loaded(
      {required RecipeModel recipe, required bool isFavourites}) {
    return RecipeStateLoaded(
      recipe: recipe,
      isFavourites: isFavourites,
    );
  }
}

/// @nodoc
const $RecipeState = _$RecipeStateTearOff();

/// @nodoc
mixin _$RecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RecipeModel recipe, bool isFavourites) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeStateInitial value) initial,
    required TResult Function(RecipeStateLoading value) loading,
    required TResult Function(RecipeStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res> implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  final RecipeState _value;
  // ignore: unused_field
  final $Res Function(RecipeState) _then;
}

/// @nodoc
abstract class $RecipeStateInitialCopyWith<$Res> {
  factory $RecipeStateInitialCopyWith(
          RecipeStateInitial value, $Res Function(RecipeStateInitial) then) =
      _$RecipeStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeStateInitialCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res>
    implements $RecipeStateInitialCopyWith<$Res> {
  _$RecipeStateInitialCopyWithImpl(
      RecipeStateInitial _value, $Res Function(RecipeStateInitial) _then)
      : super(_value, (v) => _then(v as RecipeStateInitial));

  @override
  RecipeStateInitial get _value => super._value as RecipeStateInitial;
}

/// @nodoc

class _$RecipeStateInitial implements RecipeStateInitial {
  const _$RecipeStateInitial();

  @override
  String toString() {
    return 'RecipeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecipeStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RecipeModel recipe, bool isFavourites) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
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
    required TResult Function(RecipeStateInitial value) initial,
    required TResult Function(RecipeStateLoading value) loading,
    required TResult Function(RecipeStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class RecipeStateInitial implements RecipeState {
  const factory RecipeStateInitial() = _$RecipeStateInitial;
}

/// @nodoc
abstract class $RecipeStateLoadingCopyWith<$Res> {
  factory $RecipeStateLoadingCopyWith(
          RecipeStateLoading value, $Res Function(RecipeStateLoading) then) =
      _$RecipeStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$RecipeStateLoadingCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res>
    implements $RecipeStateLoadingCopyWith<$Res> {
  _$RecipeStateLoadingCopyWithImpl(
      RecipeStateLoading _value, $Res Function(RecipeStateLoading) _then)
      : super(_value, (v) => _then(v as RecipeStateLoading));

  @override
  RecipeStateLoading get _value => super._value as RecipeStateLoading;
}

/// @nodoc

class _$RecipeStateLoading implements RecipeStateLoading {
  const _$RecipeStateLoading();

  @override
  String toString() {
    return 'RecipeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RecipeStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RecipeModel recipe, bool isFavourites) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
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
    required TResult Function(RecipeStateInitial value) initial,
    required TResult Function(RecipeStateLoading value) loading,
    required TResult Function(RecipeStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class RecipeStateLoading implements RecipeState {
  const factory RecipeStateLoading() = _$RecipeStateLoading;
}

/// @nodoc
abstract class $RecipeStateLoadedCopyWith<$Res> {
  factory $RecipeStateLoadedCopyWith(
          RecipeStateLoaded value, $Res Function(RecipeStateLoaded) then) =
      _$RecipeStateLoadedCopyWithImpl<$Res>;
  $Res call({RecipeModel recipe, bool isFavourites});
}

/// @nodoc
class _$RecipeStateLoadedCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res>
    implements $RecipeStateLoadedCopyWith<$Res> {
  _$RecipeStateLoadedCopyWithImpl(
      RecipeStateLoaded _value, $Res Function(RecipeStateLoaded) _then)
      : super(_value, (v) => _then(v as RecipeStateLoaded));

  @override
  RecipeStateLoaded get _value => super._value as RecipeStateLoaded;

  @override
  $Res call({
    Object? recipe = freezed,
    Object? isFavourites = freezed,
  }) {
    return _then(RecipeStateLoaded(
      recipe: recipe == freezed
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as RecipeModel,
      isFavourites: isFavourites == freezed
          ? _value.isFavourites
          : isFavourites // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeStateLoaded implements RecipeStateLoaded {
  const _$RecipeStateLoaded({required this.recipe, required this.isFavourites});

  @override
  final RecipeModel recipe;
  @override
  final bool isFavourites;

  @override
  String toString() {
    return 'RecipeState.loaded(recipe: $recipe, isFavourites: $isFavourites)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RecipeStateLoaded &&
            (identical(other.recipe, recipe) || other.recipe == recipe) &&
            (identical(other.isFavourites, isFavourites) ||
                other.isFavourites == isFavourites));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe, isFavourites);

  @JsonKey(ignore: true)
  @override
  $RecipeStateLoadedCopyWith<RecipeStateLoaded> get copyWith =>
      _$RecipeStateLoadedCopyWithImpl<RecipeStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(RecipeModel recipe, bool isFavourites) loaded,
  }) {
    return loaded(recipe, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
  }) {
    return loaded?.call(recipe, isFavourites);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(RecipeModel recipe, bool isFavourites)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipe, isFavourites);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RecipeStateInitial value) initial,
    required TResult Function(RecipeStateLoading value) loading,
    required TResult Function(RecipeStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RecipeStateInitial value)? initial,
    TResult Function(RecipeStateLoading value)? loading,
    TResult Function(RecipeStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class RecipeStateLoaded implements RecipeState {
  const factory RecipeStateLoaded(
      {required RecipeModel recipe,
      required bool isFavourites}) = _$RecipeStateLoaded;

  RecipeModel get recipe;
  bool get isFavourites;
  @JsonKey(ignore: true)
  $RecipeStateLoadedCopyWith<RecipeStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
