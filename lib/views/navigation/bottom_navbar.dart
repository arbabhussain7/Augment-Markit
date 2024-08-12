import 'package:augment/constants/colors.dart';
import 'package:augment/views/home_screen.dart';
import 'package:augment/views/map_screen.dart';
import 'package:augment/views/profile_screen.dart';
import 'package:augment/views/wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var index = 0;
  List<Widget> WidgetList = const [
    HomeScreen(),
    MapScreen(),
    WalletScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: WidgetList[index],
      bottomNavigationBar: Container(
        // color: whiteColor,
        padding: const EdgeInsets.all(18.0),
        child: Container(
          height: 54.h,
          width: 323.w,
          decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(44.r),
              boxShadow: [
                BoxShadow(
                    color: greyColor.withOpacity(0.3),
                    offset: Offset(0, 4),
                    blurRadius: 10)
              ]),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 42.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      index = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/home-nav.png",
                        width: 18.w,
                        height: 17.h,
                        color: index == 0 ? orangeColor : null,
                      ),
                      index == 0
                          ? Container(
                              margin: EdgeInsets.only(top: 2.h),
                              height: 2.h,
                              width: 18.w,
                              decoration: BoxDecoration(
                                  color: orangeColor,
                                  borderRadius: BorderRadius.circular(7.r)),
                            )
                          : SizedBox(),
                    ],
                  ),
                ),
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/map-nav.png",
                          width: 18.w,
                          height: 17.h,
                          color: index == 1 ? orangeColor : null,
                        ),
                        index == 1
                            ? Container(
                                margin: EdgeInsets.only(top: 2.h),
                                height: 2.h,
                                width: 18.w,
                                decoration: BoxDecoration(
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(7.r)),
                              )
                            : SizedBox()
                      ],
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/wallet-nav.png",
                          width: 18.w,
                          height: 17.h,
                          color: index == 2 ? orangeColor : null,
                        ),
                        index == 2
                            ? Container(
                                margin: EdgeInsets.only(top: 2.h),
                                height: 2.h,
                                width: 18.w,
                                decoration: BoxDecoration(
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(7.r)),
                              )
                            : SizedBox()
                      ],
                    )),
                InkWell(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/profile-nav.png",
                          width: 18.w,
                          height: 17.h,
                        ),
                        index == 3
                            ? Container(
                                margin: EdgeInsets.only(top: 2.h),
                                height: 2.h,
                                width: 18.w,
                                decoration: BoxDecoration(
                                    color: orangeColor,
                                    borderRadius: BorderRadius.circular(7.r)),
                              )
                            : SizedBox()
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
