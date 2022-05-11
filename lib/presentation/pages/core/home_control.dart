import 'package:cat_trivia/application/sign_in/sign_in_bloc.dart';
import 'package:cat_trivia/infrastructure/services/connectivity.dart';
import 'package:cat_trivia/presentation/pages/core/no_connection.dart';
import 'package:cat_trivia/presentation/pages/core/splash_screen.dart';
import 'package:cat_trivia/presentation/pages/home/home.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeControl extends StatefulWidget {
  const HomeControl({Key? key}) : super(key: key);

  @override
  State<HomeControl> createState() => _HomeControlState();
}

class _HomeControlState extends State<HomeControl> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Future.wait([
          ConnectivityX.create,
        ]),
        builder: (context, AsyncSnapshot<List<dynamic>> snap) {
          if (snap.hasData || snap.connectionState == ConnectionState.done) {
            return snap.data?[0] != ConnectivityResult.none
                ? BlocProvider(
                create: (_) => SignInBloc(),
                child: const HomePage(

                )
            )
                : const NoConnection();
          } else {
            return const SplashScreen();
          }
        });
  }
}