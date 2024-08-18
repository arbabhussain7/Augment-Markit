import 'dart:io';

import 'package:augment/constants/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UserController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  final ImagePicker picker = ImagePicker();
  var isLoading = false.obs;
  var user = {}.obs;
  RxString imagePath = "".obs;
  var image;
  var imageUrl = "".obs;

  @override
  onInit() {
    super.onInit();
    getUser();
  }

  updateUser() async {
    try {
      if (usernameController.text.isEmpty) {
        usernameController.text = user['name'];
      }
      if (phoneNumberController.text.isEmpty) {
        phoneNumberController.text = user['phoneNumber'];
      }
      if (locationController.text.isEmpty) {
        locationController.text = user['location'];
      }
      isLoading(true);
      await FirebaseFirestore.instance
          .collection("users")
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({
        'name': usernameController.text,
        "phoneNumber": phoneNumberController.text,
        "location": locationController.text,
      });
      getUser();
      Get.back();
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading(false);
    }
  }

  getimage() async {
    try {
      isLoading(true);

      image = await picker.pickImage(source: ImageSource.gallery);
      if (image != null) {
        imagePath.value = image.path.toString();
        await uploadImage();
      }
    } catch (e) {
      print(e.toString());
    } finally {
      isLoading(false);
    }
  }

  uploadImage() async {
    Reference referenceRoot = FirebaseStorage.instance.ref();
    if (image == null) return;
    String uniqueFileName = DateTime.now().millisecondsSinceEpoch.toString();
    Reference referenceDirimages = referenceRoot.child("image");
    Reference referenceImageToUpload = referenceDirimages.child(uniqueFileName);

    await referenceImageToUpload.putFile(File(imagePath.value));
    imageUrl.value = (await referenceImageToUpload.getDownloadURL());
    if (FirebaseAuth.instance.currentUser != null) {
      var usr = await FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .update({"imageUrl": imageUrl.value});
      getUser();
      Get.back();
    }
  }

  changePassword() async {
    try {
      isLoading(true);

      await FirebaseAuth.instance.currentUser!.reauthenticateWithCredential(
          EmailAuthProvider.credential(
              email: user['email'], password: oldPasswordController.text));
      await FirebaseAuth.instance.currentUser!
          .updatePassword(newPasswordController.text);
      newPasswordController.clear();
      oldPasswordController.clear();
      confirmPasswordController.clear();

      Get.back();
      Get.snackbar(
        "About User ",
        "User Message ",
        backgroundColor: redAccentColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: Text(
          "Password Change Succussfully ",
          style: GoogleFonts.montserrat(color: blueColor),
        ),
      );
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
