import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileProvider extends GetxController {
  RxInt genderGroupValue = 0.obs;
  TextEditingController nameTextController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    nameTextController.text = "Sangam";
    lastNameController.text = "Kumar";
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameTextController.dispose();
    lastNameController.dispose();
  }
}
