import 'package:cat_trivia/application/cat_bloc/cat_bloc.dart';
import 'package:cat_trivia/infrastructure/apis/cat_apis.dart';
import 'package:cat_trivia/infrastructure/repositories/cat_repo.dart';
import 'package:cat_trivia/presentation/pages/fact_history/fact_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cat_trivia/presentation/pages/core/app_widget.dart';
import 'package:cat_trivia/presentation/pages/core/no_connection.dart';
import 'package:cat_trivia/presentation/pages/home/home.dart';

class Routes {
  static MaterialPageRoute getNetworkNotFound() => MaterialPageRoute(
        builder: (_) => const NoConnection(),
      );

  static PageRoute getAppWidget(SharedPreferences preferences) =>
      MaterialPageRoute(
        builder: (_) => AppWidget(
          preferences: preferences,
        ),
      );

  static MaterialPageRoute getMainRoute(BuildContext context, {int? index}) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider(
            create: (_) => CatBloc(CatRepo(GetCatService.create()))
              ..add(CatEvent.getCat(animalType: "cat", amount: 1)),
            child: const HomePage()),
      );

  static MaterialPageRoute getFactHistory(BuildContext context) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<CatBloc>(),
            child: const FactHistory()),
      );
}
