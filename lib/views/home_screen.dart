import 'package:augment/constants/colors.dart';

import 'package:augment/views/specific_prod_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hey, Emily!",
                    style: GoogleFonts.montserrat(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.all(7.h),
                          width: 34.w,
                          height: 34.h,
                          decoration: BoxDecoration(
                              color: orangeColor.withOpacity(0.3),
                              // border: Border.all(),
                              shape: BoxShape.circle),
                          child: SvgIcon(
                            "assets/icons/inbox-icon.svg",
                            color: orangeColor,
                          )),
                      SizedBox(
                        width: 8.w,
                      ),
                      SvgIcon("assets/icons/notification-icon.svg"),
                      SizedBox(
                        width: 8.w,
                      ),
                      SvgIcon("assets/icons/sale-icon.svg"),
                      SizedBox(
                        width: 8.w,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: Text(
                "Good Evening 🌙 ",
                style: GoogleFonts.montserrat(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    color: textColor),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                width: 392.w,
                height: 56.h,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(8.r),
                    boxShadow: [
                      BoxShadow(
                          color: greyColor.withOpacity(0.3),
                          offset: Offset(2, 2),
                          blurRadius: 5)
                    ]),
                child: TextField(
                  style: GoogleFonts.montserrat(color: textColor),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: whiteColor, width: 2.w),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: whiteColor,
                          width: 2.w,
                        ),
                      ),
                      prefixIcon: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.h),
                        child: SvgIcon(
                          "assets/icons/search-icon.svg",
                          color: AccentColor,
                          width: 19.w,
                          height: 19.h,
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          color: AccentColor,
                          fontWeight: FontWeight.w500),
                      suffixIcon: SvgIcon(
                        width: 34.w,
                        height: 34.h,
                        "assets/icons/filter-icon.svg",
                        color: AccentColor,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Companies Offering Coupns",
                    style: GoogleFonts.montserrat(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: textColor),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: lightAccentColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: SizedBox(
                height: 72.h,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 100.w,
                      height: 80.h,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: blackColor.withOpacity(0.1),
                          ),
                          borderRadius: BorderRadius.circular(8.r)),
                      child: Image.asset(
                        listOfImages[index],
                        width: 50.w,
                        height: 15.h,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 8.w,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sale",
                    style: GoogleFonts.montserrat(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: textColor),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w),
              child: SizedBox(
                height: 244.h,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => SpecificProdScreen());
                          },
                          child: Container(
                              width: 148.w,
                              height: 184.h,
                              decoration: BoxDecoration(
                                  // border: Border.all(),
                                  borderRadius: BorderRadius.circular(12.r),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/product-img.png",
                                      ))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 6.w, vertical: 5.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 40.w,
                                      height: 24.h,
                                      decoration: BoxDecoration(
                                          color: redAccentColor,
                                          borderRadius:
                                              BorderRadius.circular(22.r)),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "-20% ",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 11.sp,
                                              color: whiteColor),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.h),
                                      width: 27.w,
                                      height: 27.h,
                                      decoration: BoxDecoration(
                                          color: whiteColor,
                                          // border: Border.all(),
                                          shape: BoxShape.circle),
                                      child: SvgIcon(
                                        "assets/icons/favorite_icon.svg",
                                        width: 9,
                                        height: 9,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Text(
                          "Category Here",
                          style: GoogleFonts.montserrat(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AccentColor),
                        ),
                        Text(
                          "Evening Dress",
                          style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$12",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: orangeColor),
                            ),
                            Text(
                              " \$15",
                              style: GoogleFonts.montserrat(
                                  fontSize: 8.sp,
                                  decoration: TextDecoration.lineThrough,
                                  fontWeight: FontWeight.w400,
                                  color: AccentColor),
                            ),
                            SizedBox(
                              width: 77.w,
                            ),
                            Image.asset(
                              "assets/images/kfc-logo.png",
                              width: 31.w,
                              height: 9.h,
                            )
                          ],
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Products",
                    style: GoogleFonts.montserrat(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w700,
                        color: textColor),
                  ),
                  Text(
                    "View all",
                    style: GoogleFonts.montserrat(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: textColor),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.w, top: 8.h),
              child: SizedBox(
                height: 284.h,
                child: ListView.separated(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.to(() => SpecificProdScreen());
                          },
                          child: Container(
                              width: 148.w,
                              height: 184.h,
                              decoration: BoxDecoration(
                                  // border: Border.all(),
                                  borderRadius: BorderRadius.circular(12.r),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                        "assets/images/product-img.png",
                                      ))),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10.w, vertical: 3.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(5.h),
                                      width: 27.w,
                                      height: 27.h,
                                      decoration: BoxDecoration(
                                          color: whiteColor,
                                          // border: Border.all(),
                                          shape: BoxShape.circle),
                                      child: SvgIcon(
                                        "assets/icons/favorite_icon.svg",
                                        width: 9,
                                        height: 9,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                        Text(
                          "Category Here",
                          style: GoogleFonts.montserrat(
                              fontSize: 8.sp,
                              fontWeight: FontWeight.w400,
                              color: AccentColor),
                        ),
                        Text(
                          "Evening Dress",
                          style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                        Row(
                          children: [
                            Text(
                              "\$12",
                              style: GoogleFonts.montserrat(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                  color: orangeColor),
                            ),
                            SizedBox(
                              width: 87.w,
                            ),
                            Image.asset(
                              "assets/images/kfc-logo.png",
                              width: 31.w,
                              height: 9.h,
                            )
                          ],
                        )
                      ],
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 12.w,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  final List<String> listOfImages = [
    'assets/images/kfc-logo.png',
    'assets/images/starbucks-logo.png',
    'assets/images/vapiano-logo.png',
    'assets/images/kfc-logo.png',
  ];
}
