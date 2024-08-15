import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  var isLoading = false.obs;
  var user = {}.obs;
  @override
  onInit() {
    super.onInit();
    getUser();
  }

  updateUser() async {
    try {
      isLoading(true);
      await FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        'name': usernameController.text,
        "phoneNumber": phoneNumberController.text,
        "location": locationController.text,
      });
      Get.back();
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading(false);
    }
  }

  getUser() async {
    try {
      isLoading(true);
      if (FirebaseAuth.instance.currentUser != null) {
        var usr = await FirebaseFirestore.instance
            .collection('users')
            .doc(FirebaseAuth.instance.currentUser!.uid)
            .get();
        print(usr.data());
        user(usr.data());
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading(false);
    }
  }
}
