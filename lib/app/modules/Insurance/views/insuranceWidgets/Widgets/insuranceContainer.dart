// ignore_for_file: file_names

import 'package:car_agency/app/modules/Insurance/controllers/insurance_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../../theme.dart';

// ignore: camel_case_types
class insuranceContainer extends GetView<InsuranceController> {
  Widget button(String title, int x, BuildContext context, RxInt i, double r,
      bool t, double m, double h) {
    return Obx(
      () => Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 3),
            padding: EdgeInsets.symmetric(vertical: m, horizontal: h),
            decoration: BoxDecoration(
              color:
                  i.value == x ? Theme.of(context).canvasColor : AppTheme.grey2,
              borderRadius: BorderRadius.circular(r),
            ),
            child: GestureDetector(
              onTap: () {
                i.value = x;
              },
              child: Center(
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize:
                              Theme.of(context).textTheme.headline3!.fontSize,
                          color: i.value == x
                              ? AppTheme.white
                              : AppTheme.darkgrey),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (t == true)
            Container(
              margin: EdgeInsets.only(top: 5),
              child: Text(
                "10 " + 'KD'.tr,
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: Theme.of(context).textTheme.headline3!.fontSize,
                    color: AppTheme.darkgrey),
              ),
            )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.1,
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 5),
      decoration: BoxDecoration(
        color: AppTheme.white,
        border: Border.all(color: AppTheme.white, width: 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Insurance period'.tr,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .headline3!
                                .fontSize)),
                  ),
                  Container(
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Container(
                                width: Get.width / 1.3,
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Center(
                                        child: button(
                                            'Year'.tr,
                                            0,
                                            context,
                                            Get.put(InsuranceController())
                                                .index2,
                                            30,
                                            false,
                                            5,
                                            10),
                                      ),
                                      Center(
                                        child: button(
                                            'Two Years'.tr,
                                            1,
                                            context,
                                            Get.put(InsuranceController())
                                                .index2,
                                            30,
                                            false,
                                            5,
                                            10),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Additional services'.tr,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .headline3!
                                .fontSize)),
                  ),
                  Container(
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Center(
                              child: Container(
                                width: Get.width,
                                margin: EdgeInsets.symmetric(horizontal: 0),
                                child: IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                          child: button(
                                              'Road Services'.tr,
                                              0,
                                              context,
                                              Get.put(InsuranceController())
                                                  .index3,
                                              30,
                                              true,
                                              10,
                                              5)),
                                      Expanded(
                                          child: button(
                                              'No right of back'.tr,
                                              0,
                                              context,
                                              Get.put(InsuranceController())
                                                  .index3,
                                              30,
                                              true,
                                              10,
                                              5))
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 5),
                    decoration: BoxDecoration(
                      color: AppTheme.grey2,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5),
                      child: Text('Alternative car'.tr,
                          style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .fontSize)),
                    ),
                  ),
                  Text(
                    "10 " + 'KD'.tr,
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize:
                            Theme.of(context).textTheme.headline3!.fontSize,
                        color: AppTheme.darkgrey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
