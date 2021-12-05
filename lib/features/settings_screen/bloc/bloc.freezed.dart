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
class _$CalorieMenuStateTearOff {
  const _$CalorieMenuStateTearOff();

  CalorieMenuStateInitial initial() {
    return const CalorieMenuStateInitial();
  }

  CalorieMenuStateLoading loading() {
    return const CalorieMenuStateLoading();
  }

  CalorieMenuStateLoaded loaded(CalorieMenuBaseModel menu) {
    return CalorieMenuStateLoaded(
      menu,
    );
  }
}

/// @nodoc
const $CalorieMenuState = _$CalorieMenuStateTearOff();

/// @nodoc
mixin _$CalorieMenuState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CalorieMenuBaseModel menu) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalorieMenuStateInitial value) initial,
    required TResult Function(CalorieMenuStateLoading value) loading,
    required TResult Function(CalorieMenuStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalorieMenuStateCopyWith<$Res> {
  factory $CalorieMenuStateCopyWith(
          CalorieMenuState value, $Res Function(CalorieMenuState) then) =
      _$CalorieMenuStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalorieMenuStateCopyWithImpl<$Res>
    implements $CalorieMenuStateCopyWith<$Res> {
  _$CalorieMenuStateCopyWithImpl(this._value, this._then);

  final CalorieMenuState _value;
  // ignore: unused_field
  final $Res Function(CalorieMenuState) _then;
}

/// @nodoc
abstract class $CalorieMenuStateInitialCopyWith<$Res> {
  factory $CalorieMenuStateInitialCopyWith(CalorieMenuStateInitial value,
          $Res Function(CalorieMenuStateInitial) then) =
      _$CalorieMenuStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalorieMenuStateInitialCopyWithImpl<$Res>
    extends _$CalorieMenuStateCopyWithImpl<$Res>
    implements $CalorieMenuStateInitialCopyWith<$Res> {
  _$CalorieMenuStateInitialCopyWithImpl(CalorieMenuStateInitial _value,
      $Res Function(CalorieMenuStateInitial) _then)
      : super(_value, (v) => _then(v as CalorieMenuStateInitial));

  @override
  CalorieMenuStateInitial get _value => super._value as CalorieMenuStateInitial;
}

/// @nodoc

class _$CalorieMenuStateInitial implements CalorieMenuStateInitial {
  const _$CalorieMenuStateInitial();

  @override
  String toString() {
    return 'CalorieMenuState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CalorieMenuStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CalorieMenuBaseModel menu) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
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
    required TResult Function(CalorieMenuStateInitial value) initial,
    required TResult Function(CalorieMenuStateLoading value) loading,
    required TResult Function(CalorieMenuStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CalorieMenuStateInitial implements CalorieMenuState {
  const factory CalorieMenuStateInitial() = _$CalorieMenuStateInitial;
}

/// @nodoc
abstract class $CalorieMenuStateLoadingCopyWith<$Res> {
  factory $CalorieMenuStateLoadingCopyWith(CalorieMenuStateLoading value,
          $Res Function(CalorieMenuStateLoading) then) =
      _$CalorieMenuStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalorieMenuStateLoadingCopyWithImpl<$Res>
    extends _$CalorieMenuStateCopyWithImpl<$Res>
    implements $CalorieMenuStateLoadingCopyWith<$Res> {
  _$CalorieMenuStateLoadingCopyWithImpl(CalorieMenuStateLoading _value,
      $Res Function(CalorieMenuStateLoading) _then)
      : super(_value, (v) => _then(v as CalorieMenuStateLoading));

  @override
  CalorieMenuStateLoading get _value => super._value as CalorieMenuStateLoading;
}

/// @nodoc

class _$CalorieMenuStateLoading implements CalorieMenuStateLoading {
  const _$CalorieMenuStateLoading();

  @override
  String toString() {
    return 'CalorieMenuState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CalorieMenuStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CalorieMenuBaseModel menu) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
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
    required TResult Function(CalorieMenuStateInitial value) initial,
    required TResult Function(CalorieMenuStateLoading value) loading,
    required TResult Function(CalorieMenuStateLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CalorieMenuStateLoading implements CalorieMenuState {
  const factory CalorieMenuStateLoading() = _$CalorieMenuStateLoading;
}

/// @nodoc
abstract class $CalorieMenuStateLoadedCopyWith<$Res> {
  factory $CalorieMenuStateLoadedCopyWith(CalorieMenuStateLoaded value,
          $Res Function(CalorieMenuStateLoaded) then) =
      _$CalorieMenuStateLoadedCopyWithImpl<$Res>;
  $Res call({CalorieMenuBaseModel menu});
}

/// @nodoc
class _$CalorieMenuStateLoadedCopyWithImpl<$Res>
    extends _$CalorieMenuStateCopyWithImpl<$Res>
    implements $CalorieMenuStateLoadedCopyWith<$Res> {
  _$CalorieMenuStateLoadedCopyWithImpl(CalorieMenuStateLoaded _value,
      $Res Function(CalorieMenuStateLoaded) _then)
      : super(_value, (v) => _then(v as CalorieMenuStateLoaded));

  @override
  CalorieMenuStateLoaded get _value => super._value as CalorieMenuStateLoaded;

  @override
  $Res call({
    Object? menu = freezed,
  }) {
    return _then(CalorieMenuStateLoaded(
      menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as CalorieMenuBaseModel,
    ));
  }
}

/// @nodoc

class _$CalorieMenuStateLoaded implements CalorieMenuStateLoaded {
  const _$CalorieMenuStateLoaded(this.menu);

  @override
  final CalorieMenuBaseModel menu;

  @override
  String toString() {
    return 'CalorieMenuState.loaded(menu: $menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalorieMenuStateLoaded &&
            (identical(other.menu, menu) || other.menu == menu));
  }

  @override
  int get hashCode => Object.hash(runtimeType, menu);

  @JsonKey(ignore: true)
  @override
  $CalorieMenuStateLoadedCopyWith<CalorieMenuStateLoaded> get copyWith =>
      _$CalorieMenuStateLoadedCopyWithImpl<CalorieMenuStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CalorieMenuBaseModel menu) loaded,
  }) {
    return loaded(menu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
  }) {
    return loaded?.call(menu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CalorieMenuBaseModel menu)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(menu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalorieMenuStateInitial value) initial,
    required TResult Function(CalorieMenuStateLoading value) loading,
    required TResult Function(CalorieMenuStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalorieMenuStateInitial value)? initial,
    TResult Function(CalorieMenuStateLoading value)? loading,
    TResult Function(CalorieMenuStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CalorieMenuStateLoaded implements CalorieMenuState {
  const factory CalorieMenuStateLoaded(CalorieMenuBaseModel menu) =
      _$CalorieMenuStateLoaded;

  CalorieMenuBaseModel get menu;
  @JsonKey(ignore: true)
  $CalorieMenuStateLoadedCopyWith<CalorieMenuStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CalorieMenuEventTearOff {
  const _$CalorieMenuEventTearOff();

  CalorieMenuEventShow show() {
    return const CalorieMenuEventShow();
  }

  CalorieMenuEventSet set(CalorieMenuBaseModel menu) {
    return CalorieMenuEventSet(
      menu,
    );
  }
}

/// @nodoc
const $CalorieMenuEvent = _$CalorieMenuEventTearOff();

/// @nodoc
mixin _$CalorieMenuEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() show,
    required TResult Function(CalorieMenuBaseModel menu) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? show,
    TResult Function(CalorieMenuBaseModel menu)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? show,
    TResult Function(CalorieMenuBaseModel menu)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalorieMenuEventShow value) show,
    required TResult Function(CalorieMenuEventSet value) set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CalorieMenuEventShow value)? show,
    TResult Function(CalorieMenuEventSet value)? set,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalorieMenuEventShow value)? show,
    TResult Function(CalorieMenuEventSet value)? set,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalorieMenuEventCopyWith<$Res> {
  factory $CalorieMenuEventCopyWith(
          CalorieMenuEvent value, $Res Function(CalorieMenuEvent) then) =
      _$CalorieMenuEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalorieMenuEventCopyWithImpl<$Res>
    implements $CalorieMenuEventCopyWith<$Res> {
  _$CalorieMenuEventCopyWithImpl(this._value, this._then);

  final CalorieMenuEvent _value;
  // ignore: unused_field
  final $Res Function(CalorieMenuEvent) _then;
}

/// @nodoc
abstract class $CalorieMenuEventShowCopyWith<$Res> {
  factory $CalorieMenuEventShowCopyWith(CalorieMenuEventShow value,
          $Res Function(CalorieMenuEventShow) then) =
      _$CalorieMenuEventShowCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalorieMenuEventShowCopyWithImpl<$Res>
    extends _$CalorieMenuEventCopyWithImpl<$Res>
    implements $CalorieMenuEventShowCopyWith<$Res> {
  _$CalorieMenuEventShowCopyWithImpl(
      CalorieMenuEventShow _value, $Res Function(CalorieMenuEventShow) _then)
      : super(_value, (v) => _then(v as CalorieMenuEventShow));

  @override
  CalorieMenuEventShow get _value => super._value as CalorieMenuEventShow;
}

/// @nodoc

class _$CalorieMenuEventShow implements CalorieMenuEventShow {
  const _$CalorieMenuEventShow();

  @override
  String toString() {
    return 'CalorieMenuEvent.show()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CalorieMenuEventShow);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() show,
    required TResult Function(CalorieMenuBaseModel menu) set,
  }) {
    return show();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? show,
    TResult Function(CalorieMenuBaseModel menu)? set,
  }) {
    return show?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? show,
    TResult Function(CalorieMenuBaseModel menu)? set,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalorieMenuEventShow value) show,
    required TResult Function(CalorieMenuEventSet value) set,
  }) {
    return show(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CalorieMenuEventShow value)? show,
    TResult Function(CalorieMenuEventSet value)? set,
  }) {
    return show?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalorieMenuEventShow value)? show,
    TResult Function(CalorieMenuEventSet value)? set,
    required TResult orElse(),
  }) {
    if (show != null) {
      return show(this);
    }
    return orElse();
  }
}

abstract class CalorieMenuEventShow implements CalorieMenuEvent {
  const factory CalorieMenuEventShow() = _$CalorieMenuEventShow;
}

/// @nodoc
abstract class $CalorieMenuEventSetCopyWith<$Res> {
  factory $CalorieMenuEventSetCopyWith(
          CalorieMenuEventSet value, $Res Function(CalorieMenuEventSet) then) =
      _$CalorieMenuEventSetCopyWithImpl<$Res>;
  $Res call({CalorieMenuBaseModel menu});
}

/// @nodoc
class _$CalorieMenuEventSetCopyWithImpl<$Res>
    extends _$CalorieMenuEventCopyWithImpl<$Res>
    implements $CalorieMenuEventSetCopyWith<$Res> {
  _$CalorieMenuEventSetCopyWithImpl(
      CalorieMenuEventSet _value, $Res Function(CalorieMenuEventSet) _then)
      : super(_value, (v) => _then(v as CalorieMenuEventSet));

  @override
  CalorieMenuEventSet get _value => super._value as CalorieMenuEventSet;

  @override
  $Res call({
    Object? menu = freezed,
  }) {
    return _then(CalorieMenuEventSet(
      menu == freezed
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as CalorieMenuBaseModel,
    ));
  }
}

/// @nodoc

class _$CalorieMenuEventSet implements CalorieMenuEventSet {
  const _$CalorieMenuEventSet(this.menu);

  @override
  final CalorieMenuBaseModel menu;

  @override
  String toString() {
    return 'CalorieMenuEvent.set(menu: $menu)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalorieMenuEventSet &&
            (identical(other.menu, menu) || other.menu == menu));
  }

  @override
  int get hashCode => Object.hash(runtimeType, menu);

  @JsonKey(ignore: true)
  @override
  $CalorieMenuEventSetCopyWith<CalorieMenuEventSet> get copyWith =>
      _$CalorieMenuEventSetCopyWithImpl<CalorieMenuEventSet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() show,
    required TResult Function(CalorieMenuBaseModel menu) set,
  }) {
    return set(menu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? show,
    TResult Function(CalorieMenuBaseModel menu)? set,
  }) {
    return set?.call(menu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? show,
    TResult Function(CalorieMenuBaseModel menu)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(menu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalorieMenuEventShow value) show,
    required TResult Function(CalorieMenuEventSet value) set,
  }) {
    return set(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CalorieMenuEventShow value)? show,
    TResult Function(CalorieMenuEventSet value)? set,
  }) {
    return set?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalorieMenuEventShow value)? show,
    TResult Function(CalorieMenuEventSet value)? set,
    required TResult orElse(),
  }) {
    if (set != null) {
      return set(this);
    }
    return orElse();
  }
}

abstract class CalorieMenuEventSet implements CalorieMenuEvent {
  const factory CalorieMenuEventSet(CalorieMenuBaseModel menu) =
      _$CalorieMenuEventSet;

  CalorieMenuBaseModel get menu;
  @JsonKey(ignore: true)
  $CalorieMenuEventSetCopyWith<CalorieMenuEventSet> get copyWith =>
      throw _privateConstructorUsedError;
}
