import 'package:augment/constants/colors.dart';
import 'package:augment/views/authentication/signin_screen.dart';
import 'package:augment/widgets/custom_button.dart';
import 'package:augment/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_icon/svg_icon.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 12.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 22.h, horizontal: 16.w),
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
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Old Password",
                  style: GoogleFonts.montserrat(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextfield(
                    controller: emailcontroller,
                    inputType: TextInputType.visiblePassword,
                    suffixIcons: null,
                    secureText: true,
                    isPassword: true,
                    obscureText: true,
                    hinttext: "Enter the old password"),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "New Password",
                  style: GoogleFonts.montserrat(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextfield(
                    controller: emailcontroller,
                    inputType: TextInputType.visiblePassword,
                    suffixIcons: null,
                    secureText: true,
                    isPassword: true,
                    obscureText: true,
                    hinttext: "must have 8 charcters"),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  "Confirm New Password",
                  style: GoogleFonts.montserrat(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w500,
                      color: textColor),
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextfield(
                    controller: emailcontroller,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Your Password ";
                      }
                      return null;
                    },
                    inputType: TextInputType.visiblePassword,
                    suffixIcons: null,
                    secureText: true,
                    isPassword: true,
                    obscureText: true,
                    hinttext: "must have 8 charcters"),
                SizedBox(
                  height: 293.h,
                ),
                CustomButton(
                    texts: "Update",
                    onPressed: () {
                      Get.to(() => SignInScreen());
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
