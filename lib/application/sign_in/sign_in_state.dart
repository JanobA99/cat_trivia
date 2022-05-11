part of 'sign_in_bloc.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @Default(true) bool isEmailValid,
  }) = _SignInState;
}
