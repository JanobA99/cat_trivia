import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_trivia/application/cat_bloc/cat_bloc.dart';
import 'package:cat_trivia/infrastructure/models/cat/cat_model.dart';
import 'package:cat_trivia/presentation/component/custom_button.dart';
import 'package:cat_trivia/presentation/routes/routes.dart';
import 'package:cat_trivia/presentation/styles/theme_warpper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                          child:
                          CachedNetworkImage(
                            imageUrl:  "https://cataas.com/cat?v=${cat.id}",
                            imageBuilder: (context, imageProvider) => Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,),
                              ),
                            ),
                            placeholder: (context, url) =>Image.asset('assets/placeholder.png'),
                            errorWidget: (context, url, error) => const Icon(Icons.error),
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
                              onPressed: () {
                                context.read<CatBloc>().add(CatEvent.getCat(
                                    animalType: 'cat', amount: 1));
                              },
                              title: 'another_fact'.tr(),
                            ),
                            SizedBox(
                              height: 8.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 1.sw/2.5,
                                  child: CustomButton(
                                    onPressed: () {
                                      if(state.catsModel==null){
                                        context.read<CatBloc>().add(CatEvent.getFactHistory());
                                      }
                                      Navigator.push(
                                          context, Routes.getFactHistory(context), );
                                    },
                                    title: 'fact_history'.tr(),
                                  ),
                                ),
                                SizedBox(
                                  width: 1.sw/2.5,
                                  child: CustomButton(
                                    onPressed: () {
                                      context.read<CatBloc>().add(CatEvent.saveFact(catModel: state.catModel!));
                                    },
                                    title: 'save'.tr(),
                                  ),
                                ),
                              ],
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
                                cat.type ?? "",
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
                                    ? DateFormat("hh:mm MMM d y").format(
                                DateTime.parse(cat.createdAt ?? "")) :
                            DateFormat("hh:mm a MMM d y").format(
                                        DateTime.parse(cat.createdAt ?? "")),
                            style: fonts.caption,
                          ),
                          SizedBox(
                            height: 8.h,
                          ),
                          Text(
                            cat.text ?? "",
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
