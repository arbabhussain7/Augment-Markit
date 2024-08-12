import 'package:augment/constants/colors.dart';
import 'package:augment/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

class GiveReviews extends StatefulWidget {
  const GiveReviews({
    super.key,
  });

  @override
  State<GiveReviews> createState() => _GiveReviewsState();
}

class _GiveReviewsState extends State<GiveReviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428.w,
      // height: 676.h,
      decoration: BoxDecoration(
          color: whiteColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 22.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: SvgIcon(
                      "assets/icons/arrow-back.svg",
                    )),
                Text(
                  "Write a review",
                  style: GoogleFonts.montserrat(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                SvgIcon(
                  "assets/icons/arrow-back.svg",
                  color: Colors.transparent,
                ),
              ],
            ),
          ),
          Text(
            "Stars",
            style: GoogleFonts.montserrat(
                fontSize: 18.sp, fontWeight: FontWeight.w600, color: textColor),
          ),
          RatingBar.builder(
              // minRating: 1,
              initialRating: 3,

              // ignoreGestures: true,
              itemSize: 31,
              itemCount: 5,
              unratedColor: yellowColor,
              direction: Axis.horizontal,
              itemBuilder: (context, _) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: SvgIcon(
                    "assets/icons/outlinestar-icon.svg",
                    width: 36.w,
                    height: 36.h,
                  ),
                );
              },
              onRatingUpdate: (rating) {}),
          SizedBox(
            height: 12.h,
          ),
          Container(
            width: 289.w,
            height: 44.h,
            child: Text(
              "Please share your opinion about the product",
              style: GoogleFonts.montserrat(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: thinBlackColor),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Container(
              width: 392.w,
              height: 166.h,
              decoration: BoxDecoration(
                  border: Border.all(color: blackColor.withOpacity(0.1)),
                  borderRadius: BorderRadius.circular(4.r)),
              child: Padding(
                padding: EdgeInsets.all(10.h),
                child: TextField(
                  // minLines: 7,
                  maxLines: 20,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: whiteColor, width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: whiteColor,
                        width: 2,
                      ),
                    ),
                    hintText: "Your Review",
                  ),
                  style: GoogleFonts.montserrat(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                      color: lightAccentColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 7.h, right: 222.w),
            child: Container(
              padding: EdgeInsets.only(top: 14.h),
              width: 112.w,
              height: 100.h,
              decoration: BoxDecoration(
                  color: lightestgreyAccentColor.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(1.r)),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10.h),
                    width: 52.w,
                    height: 52.h,
                    decoration: BoxDecoration(
                        color: lightOrangeColor, shape: BoxShape.circle),
                    child: SvgIcon(
                      "assets/icons/camera-icon.svg",
                      color: whiteColor,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "Add your photos",
                    style: GoogleFonts.montserrat(
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                        color: textColor),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            child: CustomButton(texts: "Submit Review", onPressed: () {}),
          ),
          SizedBox(
            height: 8.h,
          )
        ],
      ),
    );
  }
}
