import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cat_trivia/infrastructure/models/auth/auth.dart';

part 'sign_in_bloc.freezed.dart';

part 'sign_in_event.dart';

part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {


  SignInBloc() : super(const _SignInState()) {
    on<_SignUp>(_verifySignUp);
  }

  Future<void> _verifySignUp(
    _SignUp login,
    Emitter<SignInState> emit,
  ) async {

  }


}
