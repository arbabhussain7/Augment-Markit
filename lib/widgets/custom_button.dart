import 'package:augment/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
// import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.texts,
    required this.onPressed,
  });
  final String texts;
  final Function onPressed;
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.onPressed();
      },
      child: Text(
        widget.texts,
        style: GoogleFonts.montserrat(
            fontSize: 14.sp, fontWeight: FontWeight.w700, color: whiteColor),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: orangeColor,
          fixedSize: Size(Get.width, 51.h),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r))),
    );
  }
}
