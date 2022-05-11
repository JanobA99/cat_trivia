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

  _SaveFact saveFact({required CatModel catModel}) {
    return _SaveFact(
      catModel: catModel,
    );
  }

  _GetFactHistory getFactHistory() {
    return _GetFactHistory();
  }
}

/// @nodoc
const $CatEvent = _$CatEventTearOff();

/// @nodoc
mixin _$CatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String animalType, int amount) getCat,
    required TResult Function(CatModel catModel) saveFact,
    required TResult Function() getFactHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCat value) getCat,
    required TResult Function(_SaveFact value) saveFact,
    required TResult Function(_GetFactHistory value) getFactHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatEventCopyWith<$Res> {
  factory $CatEventCopyWith(CatEvent value, $Res Function(CatEvent) then) =
      _$CatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatEventCopyWithImpl<$Res> implements $CatEventCopyWith<$Res> {
  _$CatEventCopyWithImpl(this._value, this._then);

  final CatEvent _value;
  // ignore: unused_field
  final $Res Function(CatEvent) _then;
}

/// @nodoc
abstract class _$GetCatCopyWith<$Res> {
  factory _$GetCatCopyWith(_GetCat value, $Res Function(_GetCat) then) =
      __$GetCatCopyWithImpl<$Res>;
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
    required TResult Function(CatModel catModel) saveFact,
    required TResult Function() getFactHistory,
  }) {
    return getCat(animalType, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
  }) {
    return getCat?.call(animalType, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
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
    required TResult Function(_SaveFact value) saveFact,
    required TResult Function(_GetFactHistory value) getFactHistory,
  }) {
    return getCat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
  }) {
    return getCat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
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

  String get animalType;
  int get amount;
  @JsonKey(ignore: true)
  _$GetCatCopyWith<_GetCat> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveFactCopyWith<$Res> {
  factory _$SaveFactCopyWith(_SaveFact value, $Res Function(_SaveFact) then) =
      __$SaveFactCopyWithImpl<$Res>;
  $Res call({CatModel catModel});
}

/// @nodoc
class __$SaveFactCopyWithImpl<$Res> extends _$CatEventCopyWithImpl<$Res>
    implements _$SaveFactCopyWith<$Res> {
  __$SaveFactCopyWithImpl(_SaveFact _value, $Res Function(_SaveFact) _then)
      : super(_value, (v) => _then(v as _SaveFact));

  @override
  _SaveFact get _value => super._value as _SaveFact;

  @override
  $Res call({
    Object? catModel = freezed,
  }) {
    return _then(_SaveFact(
      catModel: catModel == freezed
          ? _value.catModel
          : catModel // ignore: cast_nullable_to_non_nullable
              as CatModel,
    ));
  }
}

/// @nodoc

class _$_SaveFact implements _SaveFact {
  _$_SaveFact({required this.catModel});

  @override
  final CatModel catModel;

  @override
  String toString() {
    return 'CatEvent.saveFact(catModel: $catModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveFact &&
            const DeepCollectionEquality().equals(other.catModel, catModel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(catModel));

  @JsonKey(ignore: true)
  @override
  _$SaveFactCopyWith<_SaveFact> get copyWith =>
      __$SaveFactCopyWithImpl<_SaveFact>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String animalType, int amount) getCat,
    required TResult Function(CatModel catModel) saveFact,
    required TResult Function() getFactHistory,
  }) {
    return saveFact(catModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
  }) {
    return saveFact?.call(catModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
    required TResult orElse(),
  }) {
    if (saveFact != null) {
      return saveFact(catModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCat value) getCat,
    required TResult Function(_SaveFact value) saveFact,
    required TResult Function(_GetFactHistory value) getFactHistory,
  }) {
    return saveFact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
  }) {
    return saveFact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
    required TResult orElse(),
  }) {
    if (saveFact != null) {
      return saveFact(this);
    }
    return orElse();
  }
}

abstract class _SaveFact implements CatEvent {
  factory _SaveFact({required CatModel catModel}) = _$_SaveFact;

  CatModel get catModel;
  @JsonKey(ignore: true)
  _$SaveFactCopyWith<_SaveFact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetFactHistoryCopyWith<$Res> {
  factory _$GetFactHistoryCopyWith(
          _GetFactHistory value, $Res Function(_GetFactHistory) then) =
      __$GetFactHistoryCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetFactHistoryCopyWithImpl<$Res> extends _$CatEventCopyWithImpl<$Res>
    implements _$GetFactHistoryCopyWith<$Res> {
  __$GetFactHistoryCopyWithImpl(
      _GetFactHistory _value, $Res Function(_GetFactHistory) _then)
      : super(_value, (v) => _then(v as _GetFactHistory));

  @override
  _GetFactHistory get _value => super._value as _GetFactHistory;
}

/// @nodoc

class _$_GetFactHistory implements _GetFactHistory {
  _$_GetFactHistory();

  @override
  String toString() {
    return 'CatEvent.getFactHistory()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetFactHistory);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String animalType, int amount) getCat,
    required TResult Function(CatModel catModel) saveFact,
    required TResult Function() getFactHistory,
  }) {
    return getFactHistory();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
  }) {
    return getFactHistory?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String animalType, int amount)? getCat,
    TResult Function(CatModel catModel)? saveFact,
    TResult Function()? getFactHistory,
    required TResult orElse(),
  }) {
    if (getFactHistory != null) {
      return getFactHistory();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCat value) getCat,
    required TResult Function(_SaveFact value) saveFact,
    required TResult Function(_GetFactHistory value) getFactHistory,
  }) {
    return getFactHistory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
  }) {
    return getFactHistory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCat value)? getCat,
    TResult Function(_SaveFact value)? saveFact,
    TResult Function(_GetFactHistory value)? getFactHistory,
    required TResult orElse(),
  }) {
    if (getFactHistory != null) {
      return getFactHistory(this);
    }
    return orElse();
  }
}

abstract class _GetFactHistory implements CatEvent {
  factory _GetFactHistory() = _$_GetFactHistory;
}

/// @nodoc
class _$CatStateTearOff {
  const _$CatStateTearOff();

  _SignInState call({CatModel? catModel = null, CatsModel? catsModel = null}) {
    return _SignInState(
      catModel: catModel,
      catsModel: catsModel,
    );
  }
}

/// @nodoc
const $CatState = _$CatStateTearOff();

/// @nodoc
mixin _$CatState {
  CatModel? get catModel => throw _privateConstructorUsedError;
  CatsModel? get catsModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CatStateCopyWith<CatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatStateCopyWith<$Res> {
  factory $CatStateCopyWith(CatState value, $Res Function(CatState) then) =
      _$CatStateCopyWithImpl<$Res>;
  $Res call({CatModel? catModel, CatsModel? catsModel});
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
    Object? catsModel = freezed,
  }) {
    return _then(_value.copyWith(
      catModel: catModel == freezed
          ? _value.catModel
          : catModel // ignore: cast_nullable_to_non_nullable
              as CatModel?,
      catsModel: catsModel == freezed
          ? _value.catsModel
          : catsModel // ignore: cast_nullable_to_non_nullable
              as CatsModel?,
    ));
  }
}

/// @nodoc
abstract class _$SignInStateCopyWith<$Res> implements $CatStateCopyWith<$Res> {
  factory _$SignInStateCopyWith(
          _SignInState value, $Res Function(_SignInState) then) =
      __$SignInStateCopyWithImpl<$Res>;
  @override
  $Res call({CatModel? catModel, CatsModel? catsModel});
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
    Object? catsModel = freezed,
  }) {
    return _then(_SignInState(
      catModel: catModel == freezed
          ? _value.catModel
          : catModel // ignore: cast_nullable_to_non_nullable
              as CatModel?,
      catsModel: catsModel == freezed
          ? _value.catsModel
          : catsModel // ignore: cast_nullable_to_non_nullable
              as CatsModel?,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState({this.catModel = null, this.catsModel = null});

  @JsonKey()
  @override
  final CatModel? catModel;
  @JsonKey()
  @override
  final CatsModel? catsModel;

  @override
  String toString() {
    return 'CatState(catModel: $catModel, catsModel: $catsModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInState &&
            const DeepCollectionEquality().equals(other.catModel, catModel) &&
            const DeepCollectionEquality().equals(other.catsModel, catsModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(catModel),
      const DeepCollectionEquality().hash(catsModel));

  @JsonKey(ignore: true)
  @override
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      __$SignInStateCopyWithImpl<_SignInState>(this, _$identity);
}

abstract class _SignInState implements CatState {
  const factory _SignInState({CatModel? catModel, CatsModel? catsModel}) =
      _$_SignInState;

  @override
  CatModel? get catModel;
  @override
  CatsModel? get catsModel;
  @override
  @JsonKey(ignore: true)
  _$SignInStateCopyWith<_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
