import 'package:flutter/material.dart';
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
        builder: (_) => const HomePage(),
      );
}
