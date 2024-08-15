import 'package:augment/constants/colors.dart';
import 'package:augment/controllers/user_controller.dart';
import 'package:augment/views/edit-profile.dart';
import 'package:augment/views/splash_screen.dart';
import 'package:augment/widgets/profile-textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  var controller = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Stack(
          children: [
            Container(
                decoration: BoxDecoration(),
                child: Image.asset(
                  "assets/images/profilecover-img.png",
                  width: 570,
                  height: 280,
                  fit: BoxFit.cover,
                  opacity: AlwaysStoppedAnimation(0.7),
                )),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 44.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgIcon(
                    "assets/icons/Logout-icon.svg",
                    color: Colors.transparent,
                  ),
                  Text(
                    "My Profile",
                    style: GoogleFonts.montserrat(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        color: lightswhiteColor),
                  ),
                  GestureDetector(
                    onTap: () {
                      FirebaseAuth.instance.signOut();
                      Get.offAll(() => SplashScreen());
                    },
                    child: Container(
                        padding: EdgeInsets.all(13.r),
                        width: 47.w,
                        height: 47.h,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: lightswhiteColor),
                        child: SvgIcon(
                          "assets/icons/Logout-icon.svg",
                          color: darkRedColor,
                        )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 110.h),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(12.r)),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: 88.w,
                        height: 88.h,
                        margin: EdgeInsets.symmetric(vertical: 12.h),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/images/profilecover-img.png"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            controller.user["name"],
                            style: GoogleFonts.montserrat(
                                fontSize: 20.r,
                                fontWeight: FontWeight.w600,
                                color: blackColor),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => EditProfile());
                            },
                            child: SvgIcon(
                              "assets/icons/pen-icon.svg",
                              width: 15.w,
                              height: 15.h,
                              color: blueAccentColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Email",
                            style: GoogleFonts.montserrat(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: textColor),
                          ),
                        ),
                      ),
                      ProfileCustomText(
                        text: controller.user["email"],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Phone Number",
                            style: GoogleFonts.montserrat(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: textColor),
                          ),
                        ),
                      ),
                      ProfileCustomText(text: controller.user["phoneNumber"]),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Location",
                            style: GoogleFonts.montserrat(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                                color: textColor),
                          ),
                        ),
                      ),
                      ProfileCustomText(text: controller.user["location"]),
                      Divider(),
                      SizedBox(
                        height: 8.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 5.h),
                        child: Container(
                          width: 392.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: whiteAccentsColor.withOpacity(0.2),
                                    offset: Offset(0, 2),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                              color: whiteColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: whitesAccentColor,
                                      shape: BoxShape.circle),
                                  child: SvgIcon(
                                    "assets/icons/Lock-icon.svg",
                                    color: blueAccentColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 120),
                                  child: Text(
                                    "Change Password",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: textColor),
                                  ),
                                ),
                                SvgIcon("assets/icons/forward-arrow-icons.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 5.h),
                        child: Container(
                          width: 392.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: whiteAccentsColor.withOpacity(0.2),
                                    offset: Offset(0, 2),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                              color: whiteColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: whitesAccentColor,
                                      shape: BoxShape.circle),
                                  child: SvgIcon(
                                    "assets/icons/order-icon.svg",
                                    color: blueAccentColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 200),
                                  child: Text(
                                    "Orders",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: textColor),
                                  ),
                                ),
                                SvgIcon("assets/icons/forward-arrow-icons.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 5.h),
                        child: Container(
                          width: 392.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: whiteAccentsColor.withOpacity(0.2),
                                    offset: Offset(0, 2),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                              color: whiteColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: whitesAccentColor,
                                      shape: BoxShape.circle),
                                  child: SvgIcon(
                                    "assets/icons/favorite_icon.svg",
                                    color: blueAccentColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 180),
                                  child: Text(
                                    "Favorites ",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: textColor),
                                  ),
                                ),
                                SvgIcon("assets/icons/forward-arrow-icons.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 5.h),
                        child: Container(
                          width: 392.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: whiteAccentsColor.withOpacity(0.2),
                                    offset: Offset(0, 2),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                              color: whiteColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: whitesAccentColor,
                                      shape: BoxShape.circle),
                                  child: SvgIcon(
                                    "assets/icons/address-icon.svg",
                                    color: blueAccentColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 190),
                                  child: Text(
                                    "Address",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: textColor),
                                  ),
                                ),
                                SvgIcon("assets/icons/forward-arrow-icons.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 5.h),
                        child: Container(
                          width: 392.w,
                          height: 56.h,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: whiteAccentsColor.withOpacity(0.2),
                                    offset: Offset(0, 2),
                                    blurRadius: 10)
                              ],
                              borderRadius: BorderRadius.circular(12.r),
                              color: whiteColor),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40.w,
                                  height: 40.h,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: whitesAccentColor,
                                      shape: BoxShape.circle),
                                  child: SvgIcon(
                                    "assets/icons/Lock-icon.svg",
                                    color: blueAccentColor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 130),
                                  child: Text(
                                    "Delete Account",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w500,
                                        color: textColor),
                                  ),
                                ),
                                SvgIcon("assets/icons/forward-arrow-icons.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 133.h,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
