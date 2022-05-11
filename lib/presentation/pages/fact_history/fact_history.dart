import 'package:cat_trivia/application/cat_bloc/cat_bloc.dart';
import 'package:cat_trivia/infrastructure/models/cat/cat_model.dart';
import 'package:cat_trivia/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FactHistory extends StatefulWidget {
  const FactHistory({Key? key}) : super(key: key);

  @override
  State<FactHistory> createState() => _FactHistoryState();
}

class _FactHistoryState extends State<FactHistory> {
  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold(
          appBar: AppBar(
            title: Text(
              "fact_history".tr(),
              style: fonts.subtitle2.copyWith(color: colors.backgroundColor),
            ),
          ),
          body: BlocBuilder<CatBloc, CatState>(builder: (context, state) {
            if (state.catsModel == null) {
              return Center(child: Text(
                "no_data".tr(),
                style: fonts.subtitle2,
              ));
            } else {
              CatsModel catsModel = state.catsModel!;
              return ListView.builder(
                padding: EdgeInsets.all(8.w),
                  itemCount: catsModel.cats.length,
                  itemBuilder: (context, index) => Card(
                    child: ListTile(
                          title: Text(
                            catsModel.cats[index].text ?? "",
                            style: fonts.subtitle1,
                          ),
                          subtitle: Text(
                            catsModel.cats[index].createdAt == null
                                ? ""
                                : MediaQuery.of(context).alwaysUse24HourFormat
                                    ? DateFormat("hh:mm MMM d y").format(
                                DateTime.parse(
                                    catsModel.cats[index].createdAt ??
                                        "")) : DateFormat("hh:mm a MMM d y").format(
                                        DateTime.parse(
                                            catsModel.cats[index].createdAt ??
                                                "")),
                            style: fonts.caption,
                          ),
                        ),
                  ));
            }
          }));
    });
  }
}
