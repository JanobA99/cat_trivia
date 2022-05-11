import 'package:cat_trivia/presentation/component/custom_button.dart';
import 'package:cat_trivia/presentation/styles/theme_warpper.dart';
import 'package:flutter/material.dart';
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
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                SizedBox(
                  height: 1.sh * 0.5,
                  width: 1.sw,
                  child: const Hero(
                    tag: "animal.name",
                    child: Image(
                      image: AssetImage('assets/splash.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 28.h,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        SizedBox(
                          height: 56.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 16.r,
                              backgroundImage:
                                  const AssetImage('assets/splash.jpeg'),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text('Maya Berkovskaya',
                                          style: fonts.subtitle2
                                              .copyWith(color: colors.primary)),
                                      Text(
                                        'May 25, 2019',
                                        style: fonts.caption,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Text(
                                    'Owner',
                                    style: fonts.caption,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'My job requires moving to another country. I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter Sola.',
                          style: fonts.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  color: colors.backgroundColor,
                )),
                Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.h),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomOutlinedButton(onPressed: () {  }, title: 'Add',),
                        SizedBox(height: 8.h,),
                        CustomButton(onPressed: () {  }, title: 'Add',),
                      ],
                    ),
                  ),
                  height: 150.h,
                  decoration: BoxDecoration(
                    color: colors.primary.withOpacity(0.08),
                    borderRadius:  BorderRadius.only(
                      topRight: Radius.circular(28.r),
                      topLeft: Radius.circular(28.r),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: Material(
                borderRadius: BorderRadius.circular(16.r),
                elevation: 6.0,
                child: Container(
                  padding:  EdgeInsets.symmetric(
                    vertical: 16.h,
                    horizontal: 16.w,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Text(
                            "animal.name",
                            style: fonts.headline3.copyWith(color: colors.primary, fontSize: 24.sp),
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "animal.scientificName",
                            style: fonts.subtitle1.copyWith(color: colors.primary),
                          ),
                           Text(
                            '{animal.age} years old',
                            style: fonts.caption
                          ),
                        ],
                      ),
                       SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.map,
                            color: colors.primary,
                            size: 16.w,
                          ),
                           SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            'Address',
                            style: fonts.subtitle1.copyWith(color: colors.primary),
                          ),
                        ],
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: colors.backgroundColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  height: 116.h,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
