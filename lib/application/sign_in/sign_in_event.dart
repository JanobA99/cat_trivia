part of 'sign_in_bloc.dart';

@freezed
abstract class SignInEvent with _$SignInEvent {

  factory SignInEvent.signUp({
    required AuthModel login,
  }) = _SignUp;
}
