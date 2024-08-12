import 'package:augment/constants/colors.dart';
import 'package:augment/views/coupon-detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:dotted_line/dotted_line.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 32.h),
              child: Center(
                child: Text(
                  "My Wallet",
                  style: GoogleFonts.montserrat(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.h),
                      height: 153.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: blueAccentColor),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.h),
                            width: 48.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                color: greenColor.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: SvgIcon(
                              "assets/icons/collected-icon.svg",
                              color: greenColor,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            "132",
                            style: GoogleFonts.montserrat(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: lightestgreyAccentColor),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "Coupons Collected",
                            style: GoogleFonts.montserrat(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: lightwhiteColor),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.h),
                      height: 153.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.r),
                          color: blueAccentColor),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.h),
                            width: 48.w,
                            height: 48.h,
                            decoration: BoxDecoration(
                                color: greenColor.withOpacity(0.2),
                                shape: BoxShape.circle),
                            child: SvgIcon(
                              "assets/icons/verified-icon.svg",
                              color: redColor,
                            ),
                          ),
                          SizedBox(height: 12.h),
                          Text(
                            "54",
                            style: GoogleFonts.montserrat(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                color: lightestgreyAccentColor),
                          ),
                          SizedBox(height: 6.h),
                          Text(
                            "Coupons Used",
                            style: GoogleFonts.montserrat(
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w400,
                                color: lightwhiteColor),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 17.h),
              child: Text(
                "Collected Coupons",
                style: GoogleFonts.montserrat(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w800,
                    color: textColor),
              ),
            ),
            SizedBox(
              height: 612.h,
              // width: 393.w,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        Get.bottomSheet(
                          CouponDetails(),
                        );
                      });
                    },
                    child: Container(
                      width: 392.w,
                      height: 104.h,
                      margin: EdgeInsets.symmetric(vertical: 3.h),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                        "assets/images/container-img.png",
                      ))),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 42.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/images/mc-donalds-logo.png"),
                            DottedLine(
                              direction: Axis.vertical,
                              lineLength: 93,
                              dashColor:
                                  lightestgreyAccentColor.withOpacity(0.2),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$ 10 OFF",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 24.sp,
                                        fontWeight: FontWeight.w600,
                                        color: orangeColor),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "McDonalds",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: lightwhiteColor),
                                  ),
                                  SizedBox(
                                    height: 13.h,
                                  ),
                                  Text(
                                    "Collected on 01 February 2022",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500,
                                        color: lightestgreyAccentColor),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 34.w,
                              height: 34.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: orangeColor),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: SvgIcon(
                                    "assets/icons/forward-arrow-icon.svg",
                                    color: whiteColor,
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
