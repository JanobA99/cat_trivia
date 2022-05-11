import 'package:cat_trivia/application/cat_bloc/cat_bloc.dart';
import 'package:cat_trivia/infrastructure/models/cat/cat_model.dart';
import 'package:cat_trivia/presentation/component/custom_button.dart';
import 'package:cat_trivia/presentation/styles/theme_warpper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return ThemeWrapper(builder: (context, colors, fonts, icons, _) {
      return Scaffold(
        backgroundColor: colors.backgroundColor,
        body: BlocBuilder<CatBloc, CatState>(builder: (context, state) {
          if (state.catModel == null) {
            return const SizedBox();
          } else {
            CatModel cat = state.catModel!;
            return Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 1.sh - 220.h,
                      width: 1.sw,
                      child: Hero(
                        tag: cat.id ?? "${DateTime.now()}",
                        child:  FadeInImage.assetNetwork(
                          placeholder: "assets/placeholder.png",
                          placeholderCacheWidth: 1.sw.toInt(),
                          placeholderFit: BoxFit.fitWidth,
                          image: "https://cataas.com/cat",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomOutlinedButton(
                              onPressed: () {},
                              title: 'Add',
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            CustomButton(
                              onPressed: () {},
                              title: 'Add',
                            ),
                          ],
                        ),
                      ),
                      height: 150.h,
                      decoration: BoxDecoration(
                        color: colors.primary.withOpacity(0.08),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(28.r),
                          topLeft: Radius.circular(28.r),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 366.h, 20.w, 0),
                  child: Material(
                    borderRadius: BorderRadius.circular(16.r),
                    elevation: 6.0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.h,
                        horizontal: 16.w,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Text(
                                cat.type??"",
                                style: fonts.headline3.copyWith(
                                    color: colors.primary, fontSize: 24.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            cat.createdAt == null
                                ? ""
                                : MediaQuery.of(context).alwaysUse24HourFormat
                                    ? DateFormat("hh:mm a MMM d y").format(
                                        DateTime.parse(cat.createdAt ?? ""))
                                    : DateFormat("hh:mm MMM d y").format(
                                        DateTime.parse(cat.createdAt ?? "")),
                            style: fonts.caption,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            cat.text??"",
                            style: fonts.subtitle1,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        color: colors.backgroundColor,
                        borderRadius: BorderRadius.circular(16.r),
                      ),
                    ),
                  ),
                )
              ],
            );
          }
        }),
      );
    });
  }
}
