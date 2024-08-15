import 'package:augment/constants/colors.dart';
import 'package:augment/controllers/user_controller.dart';
import 'package:augment/views/authentication/signin_screen.dart';
import 'package:augment/views/navigation/bottom_navbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthController extends GetxController {
  var isLoading = false.obs;
  FirebaseAuth auth = FirebaseAuth.instance;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpasswordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  var userController = Get.find<UserController>();

  createUser(uid) async {
    await FirebaseFirestore.instance.collection("users").doc(uid).set({
      'name': nameController.text,
      "email": emailController.text,
      "phoneNumber": numberController.text,
      "imageUrl": "",
      "location": "",
      'uid': uid,
    });
  }

  void register() async {
    try {
      isLoading(true);
      var credentials = await auth.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      await createUser(credentials.user!.uid);

      Get.off(() => SignInScreen());
    } catch (e) {
      Get.snackbar("About User ", "User Message ",
          backgroundColor: redAccentColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Account Create Failed",
            style: GoogleFonts.montserrat(color: blueColor),
          ),
          messageText: Text(
            e.toString(),
            style: GoogleFonts.montserrat(color: blueColor),
          ));
    } finally {
      isLoading(false);
    }
  }

  void login() async {
    try {
      isLoading(true);
      await auth.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      userController.getUser();
      Get.offAll(() => BottomNavBar());
    } catch (e) {
      Get.snackbar("Login ", "User ",
          backgroundColor: redAccentColor,
          snackPosition: SnackPosition.BOTTOM,
          titleText: Text(
            "Login Failed",
            style: GoogleFonts.montserrat(color: blueColor),
          ),
          messageText: Text(
            e.toString(),
            style: GoogleFonts.montserrat(color: blueColor),
          ));
    } finally {
      isLoading(false);
    }
  }

  void logout() async {
    await auth.signOut();
  }
}
