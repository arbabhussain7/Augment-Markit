import 'package:augment/controllers/auth_controller.dart';

import 'package:augment/views/authentication/signup_screen.dart';
import 'package:augment/constants/colors.dart';
import 'package:augment/widgets/custom_button.dart';
import 'package:augment/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // final emailcontroller = TextEditingController();
  // final passwordcontroller = TextEditingController();
  var controller = Get.put(AuthController());
  GlobalKey<FormState> key = GlobalKey();
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/signup-img.png",
              ),
              SizedBox(
                height: 42.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 17.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: textColor),
                    ),
                    Text(
                      "Login to your account",
                      style: TextStyle(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff212121)),
                    ),
                    SizedBox(
                      height: 22.h,
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
                      controller: controller.emailController,
                      hinttext: "Fleacttech@gmail.com",
                      validator: (value) {
                        if (value!.isEmpty) {
                          return " Please Your Enter Email";
                        } else if (!GetUtils.isEmail(value)) {
                          return " Please Enter Valid Email";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.montserrat(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          color: textColor),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    CustomTextfield(
                        controller: controller.passwordController,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                            value: isChecked,
                            activeColor: orangeColor,
                            onChanged: (newbool) {
                              setState(() {
                                isChecked = newbool;
                              });
                            }),
                        Text(
                          "Remember me",
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: greyAccentColor),
                        ),
                        SizedBox(
                          width: 155.w,
                        ),
                        Text(
                          "Forgot Password?",
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: textColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25.h,
                    ),
                    Obx(
                      () => controller.isLoading.value
                          ? Center(child: CircularProgressIndicator())
                          : CustomButton(
                              onPressed: () {
                                if (key.currentState!.validate()) {
                                  controller.login();
                                }
                              },
                              texts: "Login",
                            ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Divider(
                                  color: blackAccentColor.withOpacity(0.1))),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Or sign in with",
                            style: GoogleFonts.montserrat(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: greyAccentColor),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Expanded(
                            child: Divider(
                                color: blackAccentColor.withOpacity(0.1)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 22.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: blackAccentColor.withOpacity(0.1)),
                              ),
                              child: Image.asset(
                                "assets/images/google.png",
                                width: 26.w,
                                height: 27.h,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 22.w,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10.h),
                              // width: 160.w,
                              // height: 55.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                border: Border.all(
                                    color: blackAccentColor.withOpacity(0.1)),
                              ),
                              child: Image.asset(
                                "assets/images/apple.png",
                                width: 26.w,
                                height: 27.h,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 92.h,
                    ),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Get.to(() => SignUpScreen());
                        },
                        child: RichText(
                          text: TextSpan(
                              text: "Don’t have an account?",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: greyColor),
                              children: <TextSpan>[
                                TextSpan(
                                    text: " Sign Up",
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.w700,
                                        color: blueColor))
                              ]),
                        ),
                      ),
                    )
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
