part of 'cat_bloc.dart';

@freezed
abstract class CatState with _$CatState {
  const factory CatState({
    @Default(null) CatModel? catModel,
  }) = _SignInState;
}
