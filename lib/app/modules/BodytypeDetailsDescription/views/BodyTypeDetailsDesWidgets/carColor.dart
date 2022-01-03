// ignore_for_file: file_names

import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodytypeDetailsDescriptionCarColor
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(top: 3),
        color: AppTheme.white,
        height: 210,
        child: Column(
          children: [
            Obx(
              () => Container(
                margin: EdgeInsets.only(top: 5),
                padding: EdgeInsets.all(10),
                color: AppTheme.white,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: controller.colorlist.map<Widget>((e) {
                      return GestureDetector(
                        onTap: () {
                          Get.put(NewAgencyItemDetailsController()).ind.value =
                              e['i'];
                          print(Get.put(NewAgencyItemDetailsController()).ind);
                        },
                        child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: Colors.black),
                              color: e['c'],
                            ),
                            width: 25,
                            height: 25),
                      );
                    }).toList()),
              ),
            ),
            if (Get.put(NewAgencyItemDetailsController()).ind.value == 0)
              Car1()
            else if (Get.put(NewAgencyItemDetailsController()).ind.value == 1)
              Car2()
            else if (Get.put(NewAgencyItemDetailsController()).ind.value == 2)
              Car3()
            else if (Get.put(NewAgencyItemDetailsController()).ind.value == 3)
              Car4()
            else if (Get.put(NewAgencyItemDetailsController()).ind.value == 4)
              Car5()
          ],
        ),
      ),
    );
  }
}

class Car1 extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        color: AppTheme.white,
        child: Image.network(
          controller.url1.toString(),
          height: 140,
        ));
  }
}

class Car2 extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        color: AppTheme.white,
        child: Image.network(
          controller.url2.toString(),
          height: 140,
        ));
  }
}

class Car3 extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        color: AppTheme.white,
        child: Image.network(
          controller.url3.toString(),
          height: 140,
        ));
  }
}

class Car4 extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        color: AppTheme.white,
        child: Image.network(
          controller.url4.toString(),
          height: 140,
        ));
  }
}

class Car5 extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: Get.width,
        color: AppTheme.white,
        child: Image.network(
          controller.url5.toString(),
          height: 140,
        ));
  }
}
