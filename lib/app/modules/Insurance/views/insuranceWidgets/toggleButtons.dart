// ignore_for_file: file_names

import 'package:car_agency/app/modules/Insurance/controllers/insurance_controller.dart';
import 'package:car_agency/app/modules/Insurance/views/insuranceWidgets/NewVersion.dart';
import 'package:car_agency/app/modules/Insurance/views/insuranceWidgets/Renewal.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../theme.dart';

class InsuranceToggleButtons extends GetView<InsuranceController> {
  Widget button(
      String title, int x, BuildContext context, RxInt i, double h, double r) {
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: i.value == x ? Theme.of(context).canvasColor : AppTheme.white,
          borderRadius: BorderRadius.circular(r),
        ),
        // height: h,
        padding: EdgeInsets.symmetric(vertical: h),
        child: GestureDetector(
          onTap: () {
            i.value = x;
          },
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: Theme.of(context).textTheme.headline6!.fontSize,
                  color: i.value == x ? AppTheme.white : AppTheme.darkgrey),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Stack(children: [
                      Center(
                        child: Container(
                          width: Get.width / 1.3,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            border:
                                Border.all(color: AppTheme.white, width: 1.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: button(
                                        'Against others'.tr,
                                        0,
                                        context,
                                        Get.put(InsuranceController()).index,
                                        10,
                                        10)),
                                Expanded(
                                    child: button(
                                        'Comprehensive'.tr,
                                        1,
                                        context,
                                        Get.put(InsuranceController()).index,
                                        10,
                                        10))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Stack(children: [
                      Center(
                        child: Container(
                          width: Get.width / 1.3,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: AppTheme.white,
                            border:
                                Border.all(color: AppTheme.white, width: 1.0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IntrinsicHeight(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                    child: button(
                                        'New version'.tr,
                                        0,
                                        context,
                                        Get.put(InsuranceController()).index1,
                                        5,
                                        10)),
                                Expanded(
                                    child: button(
                                        'Renewal'.tr,
                                        1,
                                        context,
                                        Get.put(InsuranceController()).index1,
                                        5,
                                        10))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
          if (Get.put(InsuranceController()).index.value == 0 &&
              Get.put(InsuranceController()).index1.value == 0)
            Container()
          else if (Get.put(InsuranceController()).index.value == 1 &&
              Get.put(InsuranceController()).index1.value == 0)
            NewVersion()
          else if (Get.put(InsuranceController()).index.value == 1 &&
              Get.put(InsuranceController()).index1.value == 1)
            Renewal()
          else if (Get.put(InsuranceController()).index.value == 0 &&
              Get.put(InsuranceController()).index1.value == 1)
            Container()
        ],
      ),
    );
  }
}
