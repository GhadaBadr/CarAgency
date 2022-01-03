// ignore_for_file: unnecessary_overrides

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class InsuranceController extends GetxController {
  File? image1;
  File? image2;
  File? image3;
  File? image;
  Future pickImage1() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      Get.put(InsuranceController()).image1 = imageTemporary;
      update();
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future pickImage2() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      Get.put(InsuranceController()).image2 = imageTemporary;
      update();
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future pickImage3() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      Get.put(InsuranceController()).image3 = imageTemporary;
      update();
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future pickImage4() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;
      final imageTemporary = File(image.path);

      Get.put(InsuranceController()).image = imageTemporary;
      update();
    } on PlatformException catch (e) {
      print(e);
    }
  }

  final count = 0.obs;
  RxInt index = 1.obs;
  RxInt index1 = 0.obs;
  RxInt index2 = 0.obs;
  RxInt index3 = 0.obs;
  String dropDownValue = 'Select the type of car';
  RxList type = ['SUV'.tr, 'Coupe'.tr, 'Sedan'.tr, 'Crossover'.tr].obs;
  String dropDownValue1 = 'Select car model';
  RxList model = ['BMW'.tr, 'Ford'.tr, 'Land Rover'.tr, 'Mini Cooper'.tr].obs;
  String dropDownValue2 = 'Select manufacturing year';
  RxList year = ['1990'.tr, '1980'.tr, '1970'.tr, '1960'.tr].obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
