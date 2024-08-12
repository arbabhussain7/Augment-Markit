import 'package:augment/constants/colors.dart';
import 'package:augment/views/give_reviews.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class SpecificProdScreen extends StatefulWidget {
  const SpecificProdScreen({super.key});

  @override
  State<SpecificProdScreen> createState() => _SpecificProdScreenState();
}

class _SpecificProdScreenState extends State<SpecificProdScreen> {
  final List<String> listoftext = ["XS", "S", "M", "L", "XL"];
  final List<String> listOfNumber = ["12", "5", "4", "2", "0"];
  final List<Color> listOfColors = [
    blueColor,
    pinkColor,
    orangeColor,
    blackColor
  ];

  int selectedSize = 0;
  int colorsSize = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 12.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgIcon("assets/icons/arrow-back.svg")),
                    Text(
                      "Category Name",
                      style: GoogleFonts.montserrat(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                    SvgIcon(
                      "assets/icons/arrow-back.svg",
                      color: Colors.transparent,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      viewportFraction: 0.67,
                      // aspectRatio: 1,
                      height: 413.h,
                    ),
                    items: [0, 1].map((i) {
                      return Builder(
                        builder: (
                          BuildContext context,
                        ) {
                          return Image.asset(listofcarousalimg[i]);
                        },
                      );
                    }).toList(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 333.w, top: 12.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(7.h),
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                              color: whiteColor, shape: BoxShape.circle),
                          child: SvgIcon(
                            "assets/icons/filtering-icon.svg",
                            color: orangeColor,
                            width: 14.w,
                            height: 14.h,
                          ),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Container(
                          padding: EdgeInsets.all(8.h),
                          width: 36.w,
                          height: 36.h,
                          decoration: BoxDecoration(
                              color: whiteColor, shape: BoxShape.circle),
                          child: SvgIcon(
                            "assets/icons/favorite_icon.svg",
                            width: 14.w,
                            height: 14.h,
                            color: AccentColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "H&M",
                      style: GoogleFonts.montserrat(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 142.w),
                      child: Image.asset("assets/images/kfc-logo.png"),
                    ),
                    Text(
                      "\$19.99",
                      style: GoogleFonts.montserrat(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          color: orangeColor),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w),
                child: Text(
                  "Category Name",
                  style: GoogleFonts.montserrat(
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: greyColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, top: 15.h),
                child: Text(
                  "Short dress in soft cotton jersey with decorative button down the front and a wide, frill-trimm square neckline with concealed elastication. Elasticat seam under the bust and short puff sleeves with a small frill trim.",
                  style: GoogleFonts.montserrat(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: textColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Size ",
                      style: GoogleFonts.montserrat(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 22.h,
                      width: 250.w,
                      child: ListView.separated(
                        itemCount: listoftext.length,
                        scrollDirection: Axis.horizontal,
                        // shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize = index;
                              });
                            },
                            child: Container(
                              width: 39.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: selectedSize == index
                                          ? orangeColor
                                          : Colors.transparent),
                                  color: selectedSize == index
                                      ? orangeColor.withOpacity(0.1)
                                      : Colors.transparent),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  listoftext[index],
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                      color: lightAccentColor),
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 12.w,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Color",
                      style: GoogleFonts.montserrat(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: thinBlackColor),
                    ),
                    SizedBox(
                      height: 24.h,
                      width: 250.w,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                colorsSize = index;
                              });
                            },
                            child: Container(
                              margin: EdgeInsets.only(left: 12.w),
                              padding: EdgeInsets.all(2.h),
                              width: 24.w,
                              height: 24.h,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: colorsSize == index
                                        ? listOfColors[index]
                                        : Colors.transparent,
                                  ),
                                  shape: BoxShape.circle),
                              child: Container(
                                width: 24.w,
                                height: 24.h,
                                decoration: BoxDecoration(
                                    color: listOfColors[index],
                                    shape: BoxShape.circle),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 12.w,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, top: 12.h),
                child: Text(
                  "In stock",
                  style: GoogleFonts.montserrat(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: darkGreenColor),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.w),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Add to Cart",
                        style: GoogleFonts.montserrat(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w700,
                            color: whiteColor),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r)),
                          backgroundColor: orangeColor,
                          fixedSize: Size(331.w, 53.h)),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    Container(
                        padding: EdgeInsets.all(10.h),
                        width: 55.w,
                        height: 51.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: orangeColor),
                            borderRadius: BorderRadius.circular(6.r)),
                        child: SvgIcon(
                          "assets/icons/message-icon.svg",
                          width: 26.w,
                          height: 23.h,
                          color: orangeColor,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Divider(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h, left: 12.w),
                child: Text(
                  "Rating and reviews",
                  style: GoogleFonts.montserrat(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: textColor),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  height: 95.h,
                  width: 400.w,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "4.3",
                            style: GoogleFonts.montserrat(
                                fontSize: 44.sp,
                                color: blackColor,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "23 Reviews",
                            style: GoogleFonts.montserrat(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: lightAccentColor),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 32.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          RatingBar.builder(
                              minRating: 1,
                              itemSize: 17,
                              unratedColor: yellowColor,
                              itemCount: 5,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              itemBuilder: (context, _) {
                                return Icon(
                                  Icons.star,
                                  color: yellowColor,
                                );
                              },
                              onRatingUpdate: (rating) {}),
                          RatingBar.builder(
                              minRating: 1,
                              unratedColor: yellowColor,
                              ignoreGestures: true,
                              itemSize: 17,
                              itemCount: 4,
                              direction: Axis.horizontal,
                              itemBuilder: (context, _) {
                                return Icon(
                                  Icons.star,
                                  color: yellowColor,
                                );
                              },
                              onRatingUpdate: (rating) {}),
                          RatingBar.builder(
                              minRating: 1,
                              itemSize: 17,
                              unratedColor: yellowColor,
                              itemCount: 3,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              itemBuilder: (context, _) {
                                return Icon(
                                  Icons.star,
                                  color: yellowColor,
                                );
                              },
                              onRatingUpdate: (rating) {}),
                          RatingBar.builder(
                              minRating: 1,
                              itemSize: 17,
                              unratedColor: yellowColor,
                              ignoreGestures: true,
                              itemCount: 2,
                              direction: Axis.horizontal,
                              itemBuilder: (context, _) {
                                return Icon(
                                  Icons.star,
                                  color: yellowColor,
                                );
                              },
                              onRatingUpdate: (rating) {}),
                          RatingBar.builder(
                              minRating: 1,
                              itemSize: 17,
                              itemCount: 1,
                              unratedColor: yellowColor,
                              ignoreGestures: true,
                              direction: Axis.horizontal,
                              itemBuilder: (context, _) {
                                return Icon(
                                  Icons.star,
                                  color: yellowColor,
                                );
                              },
                              onRatingUpdate: (rating) {}),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 4.h, horizontal: 2.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 114.w,
                              height: 8.h,
                              child: LinearProgressBar(
                                maxSteps: 3,
                                progressType: LinearProgressBar
                                    .progressTypeLinear, // Use Linear progress
                                currentStep: 3,
                                progressColor: orangeColor,
                                backgroundColor: greyColor,
                                borderRadius: BorderRadius.circular(10), //  NEW
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                              width: 40.w,
                              height: 8.h,
                              child: LinearProgressBar(
                                maxSteps: 3,
                                progressType: LinearProgressBar
                                    .progressTypeLinear, // Use Linear progress
                                currentStep: 3,
                                progressColor: orangeColor,
                                backgroundColor: greyColor,
                                borderRadius: BorderRadius.circular(10), //  NEW
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                              width: 29.w,
                              height: 8.h,
                              child: LinearProgressBar(
                                maxSteps: 3,
                                progressType: LinearProgressBar
                                    .progressTypeLinear, // Use Linear progress
                                currentStep: 3,
                                progressColor: orangeColor,
                                backgroundColor: greyColor,
                                borderRadius: BorderRadius.circular(10), //  NEW
                              ),
                            ),
                            SizedBox(
                              height: 12.h,
                            ),
                            SizedBox(
                              width: 15.w,
                              height: 8.h,
                              child: LinearProgressBar(
                                maxSteps: 3,
                                progressType: LinearProgressBar
                                    .progressTypeLinear, // Use Linear progress
                                currentStep: 3,
                                progressColor: orangeColor,
                                backgroundColor: greyColor,
                                borderRadius: BorderRadius.circular(10), //  NEW
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            SizedBox(
                              width: 8.w,
                              height: 8.h,
                              child: LinearProgressBar(
                                maxSteps: 3,
                                progressType: LinearProgressBar
                                    .progressTypeLinear, // Use Linear progress
                                currentStep: 3,
                                progressColor: orangeColor,
                                backgroundColor: greyColor,
                                borderRadius: BorderRadius.circular(10), //  NEW
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 32.w, top: 0.h),
                        child: SizedBox(
                          // height: 122.h,
                          width: 20.w,
                          child: ListView.builder(
                            itemCount: listOfNumber.length,
                            scrollDirection: Axis.vertical,
                            // shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                // padding: EdgeInsets.symmetric(vertical: 1),
                                width: 39.w,
                                height: 18.h,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    listOfNumber[index],
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                        color: lightAccentColor),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: SizedBox(
                  height: 502.h,
                  // width: 386.w,
                  child: ListView.separated(
                    itemCount: 4,
                    scrollDirection: Axis.vertical,
                    // shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: EdgeInsets.symmetric(horizontal: 12.w),
                          padding: EdgeInsets.only(left: 2.w),
                          width: 386.w,
                          height: 106.h,
                          decoration: BoxDecoration(
                              color: Color(0xffF0F0F0),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 12.h, left: 6.w),
                                child: Image.asset(
                                    "assets/images/profilelist.png"),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.w, vertical: 12.h),
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 6.w),
                                    width: 358.w,
                                    height: 82.h,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7.w),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Kurt Mullins",
                                                style: GoogleFonts.montserrat(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w700,
                                                    color: blackColor),
                                              ),
                                              RatingBar.builder(
                                                  minRating: 1,
                                                  ignoreGestures: true,
                                                  itemSize: 17,
                                                  itemCount: 5,
                                                  unratedColor: yellowColor,
                                                  direction: Axis.horizontal,
                                                  itemBuilder: (context, _) {
                                                    return Icon(
                                                      Icons.star,
                                                      color: yellowColor,
                                                    );
                                                  },
                                                  onRatingUpdate: (rating) {}),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
                                          style: GoogleFonts.montserrat(
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w400,
                                              color: darkGreyColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ));
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        width: 10.w,
                        height: 10.h,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Get.bottomSheet(GiveReviews(), isScrollControlled: true);
                    });
                  },
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          "Write a review",
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              color: whiteColor),
                        ),
                      ),
                      SvgIcon(
                        "assets/icons/input-icon.svg",
                        color: whiteColor,
                        width: 16.w,
                        height: 16.h,
                      )
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.r)),
                      backgroundColor: orangeColor,
                      fixedSize: Size(167.w, 41.h)),
                ),
              ),
              SizedBox(
                height: 33.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  final List<String> listofcarousalimg = [
    "assets/images/carousal-img.png",
    "assets/images/carousal-imgs.png",
  ];
}
