// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatEventTearOff {
  const _$CatEventTearOff();

  _GetCat getCat({required String animalType, required int amount}) {
    return _GetCat(
      animalType: animalType,
      amount: amount,
    );
  }
}

/// @nodoc
const $CatEvent = _$CatEventTearOff();

/// @nodoc
mixin _$CatEvent {
  String get animalType => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String animalType, int amount) getCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCat value) getCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatEventCopyWith<CatEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatEventCopyWith<$Res> {
  factory $CatEventCopyWith(CatEvent value, $Res Function(CatEvent) then) =
      _$CatEventCopyWithImpl<$Res>;
  $Res call({String animalType, int amount});
}

/// @nodoc
class _$CatEventCopyWithImpl<$Res> implements $CatEventCopyWith<$Res> {
  _$CatEventCopyWithImpl(this._value, this._then);

  final CatEvent _value;
  // ignore: unused_field
  final $Res Function(CatEvent) _then;

  @override
  $Res call({
    Object? animalType = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      animalType: animalType == freezed
          ? _value.animalType
          : animalType // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GetCatCopyWith<$Res> implements $CatEventCopyWith<$Res> {
  factory _$GetCatCopyWith(_GetCat value, $Res Function(_GetCat) then) =
      __$GetCatCopyWithImpl<$Res>;
  @override
  $Res call({String animalType, int amount});
}

/// @nodoc
class __$GetCatCopyWithImpl<$Res> extends _$CatEventCopyWithImpl<$Res>
    implements _$GetCatCopyWith<$Res> {
  __$GetCatCopyWithImpl(_GetCat _value, $Res Function(_GetCat) _then)
      : super(_value, (v) => _then(v as _GetCat));

  @override
  _GetCat get _value => super._value as _GetCat;

  @override
  $Res call({
    Object? animalType = freezed,
    Object? amount = freezed,
  }) {
    return _then(_GetCat(
      animalType: animalType == freezed
          ? _value.animalType
          : animalType // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCat implements _GetCat {
  _$_GetCat({required this.animalType, required this.amount});

  @override
  final String animalType;
  @override
  final int amount;

  @override
  String toString() {
    return 'CatEvent.getCat(animalType: $animalType, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetCat &&
            const DeepCollectionEquality()
                .equals(other.animalType, animalType) &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(animalType),
      const DeepCollectionEquality().hash(amount));

  @JsonKey(ignore: true)
  @override
  _$GetCatCopyWith<_GetCat> get copyWith =>
      __$GetCatCopyWithImpl<_GetCat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String animalType, int amount) getCat,
  }) {
    return getCat(animalType, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
  }) {
    return getCat?.call(animalType, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    required TResult orElse(),
  }) {
    if (getCat != null) {
      return getCat(animalType, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCat value) getCat,
  }) {
    return getCat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
  }) {
    return getCat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    required TResult orElse(),
  }) {
    if (getCat != null) {
      return getCat(this);
    }
    return orElse();
  }
}

abstract class _GetCat implements CatEvent {
  factory _GetCat({required String animalType, required int amount}) =
      _$_GetCat;

  @override
  String get animalType;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$GetCatCopyWith<_GetCat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CatStateTearOff {
  const _$CatStateTearOff();

  _SignInState call({CatModel? catModel = null}) {
    return _SignInState(
      catModel: catModel,
    );
  }
}

/// @nodoc
const $CatState = _$CatStateTearOff();

/// @nodoc
mixin _$CatState {
  CatModel? get catModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatStateCopyWith<CatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatStateCopyWith<$Res> {
  factory $CatStateCopyWith(CatState value, $Res Function(CatState) then) =
      _$CatStateCopyWithImpl<$Res>;
  $Res call({CatModel? catModel});
}

/// @nodoc
class _$CatStateCopyWithImpl<$Res> implements $CatStateCopyWith<$Res> {
  _$CatStateCopyWithImpl(this._value, this._then);

  final CatState _value;
  // ignore: unused_field
  final $Res Function(CatState) _then;

  @override
  $Res call({
    Object? catModel = freezed,
  }) {
    return _then(_value.copyWith(
      catModel: catModel == freezed
          ? _value.catModel
          : catModel // ignore: cast_nullable_to_non_nullable
              as CatModel?,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res> implements $CatStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call({CatModel? catModel});
}

/// @nodoc
class __$SignInStateCopyWithImpl<$Res> extends _$CatStateCopyWithImpl<$Res>
    implements _$SignInStateCopyWith<$Res> {
  __$SignInStateCopyWithImpl(
      _SignInState _value, $Res Function(_SignInState) _then)
      : super(_value, (v) => _then(v as _SignInState));

  @override
  _SignInState get _value => super._value as _SignInState;

  @override
  $Res call({
    Object? catModel = freezed,
  }) {
    return _then(_SignInState(
      catModel: catModel == freezed
          ? _value.catModel
          : catModel // ignore: cast_nullable_to_non_nullable
              as CatModel?,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState({this.catModel = null});

  @JsonKey()
  @override
  final CatModel? catModel;

  @override
  String toString() {
    return 'CatState(catModel: $catModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.catModel, catModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(catModel));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements CatState {
  const factory _SignInState({CatModel? catModel}) = _$_SignInState;

  @override
  CatModel? get catModel;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
