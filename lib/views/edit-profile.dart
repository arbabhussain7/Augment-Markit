import 'package:augment/constants/colors.dart';
import 'package:augment/widgets/custom_button.dart';
import 'package:augment/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final namecontroller = TextEditingController();
  final emailcontroller = TextEditingController();
  final phonecontroller = TextEditingController();
  final locationcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      "Edit Profile",
                      style: GoogleFonts.montserrat(
                          fontSize: 21.sp,
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
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 88.w,
                      height: 88.h,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profilecover-img.png"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 63.h, left: 70.w),
                      child: Container(
                          padding: EdgeInsets.all(2.h),
                          width: 21.w,
                          height: 21..h,
                          decoration: BoxDecoration(
                              border: Border.all(),
                              shape: BoxShape.circle,
                              color: blackColor),
                          child: SvgIcon(
                            "assets/icons/profilecamera-icon.svg",
                            color: whiteColor,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 25.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextfield(
                      suffixIcons: null,
                      inputType: TextInputType.emailAddress,
                      controller: namecontroller,
                      hinttext: "Ira Membrit",
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextfield(
                      suffixIcons: null,
                      inputType: TextInputType.emailAddress,
                      controller: emailcontroller,
                      hinttext: "Fleacttech@gmail.com",
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "Phone Number",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextfield(
                      suffixIcons: null,
                      inputType: TextInputType.emailAddress,
                      controller: phonecontroller,
                      hinttext: "+3265615365",
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      "Location",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextfield(
                      suffixIcons: null,
                      inputType: TextInputType.emailAddress,
                      controller: locationcontroller,
                      hinttext: "Chak Shahzad Town ",
                    ),
                    SizedBox(
                      height: 132.h,
                    ),
                    CustomButton(texts: "Update", onPressed: () {})
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
