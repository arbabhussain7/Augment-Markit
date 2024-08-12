import 'package:augment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCustomText extends StatelessWidget {
  const ProfileCustomText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15.w),
      child: Container(
        width: 392.w,
        height: 50.h,
        padding: EdgeInsets.only(left: 12.w),
        decoration: BoxDecoration(
          color: lightestgreyAccentColor,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            text,
            style: GoogleFonts.montserrat(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: blackAccentColor),
          ),
        ),
      ),
    );
  }
}
