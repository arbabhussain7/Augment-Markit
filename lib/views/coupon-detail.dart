import 'package:augment/constants/colors.dart';
import 'package:augment/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

class CouponDetails extends StatelessWidget {
  const CouponDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 428.w,
          height: 288.h,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(),
              borderRadius: BorderRadius.circular(12.r)),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 22.h, horizontal: 16.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: SvgIcon("assets/icons/arrow-back.svg")),
                    Text(
                      "Coupon Details",
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
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/starbucks-img.png",
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 12.w),
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
                          Text(
                            "McDonalds",
                            style: GoogleFonts.montserrat(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                                color: orangeColor),
                          ),
                          SizedBox(
                            height: 9.h,
                          ),
                          Row(
                            children: [
                              Text(
                                "Discount: 12%",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: lightAccentColor),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "Expiry Date: 01 February 2022",
                                style: GoogleFonts.montserrat(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w500,
                                    color: lightAccentColor),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.w),
                child: CustomButton(texts: "Avail Now", onPressed: () {}),
              )
            ],
          ),
        ),
      ],
    );
  }
}
