// ignore_for_file: file_names

import 'package:car_agency/app/modules/Insurance/controllers/insurance_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../../theme.dart';

class ImageContainer extends GetView<InsuranceController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.1,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: AppTheme.white,
        border: Border.all(color: AppTheme.white, width: 1.0),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('City ​​image'.tr,
                        style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .headline3!
                                .fontSize)),
                  ),
                  GetBuilder(
                    init: Get.put(InsuranceController()),
                    builder: ((c) => Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Get.put(InsuranceController()).image1 != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.file(
                                        Get.put(InsuranceController()).image1!,
                                        width: 80,
                                        height: 50,
                                        fit: BoxFit.fill,
                                      ))
                                  : GestureDetector(
                                      onTap: () {
                                        Get.put(InsuranceController())
                                            .pickImage1();
                                      },
                                      child: Image.network(
                                        'https://i.ibb.co/p2Ys14c/imagepic.png',
                                        width: 80,
                                        height: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                              Get.put(InsuranceController()).image2 != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.file(
                                        Get.put(InsuranceController()).image2!,
                                        width: 80,
                                        height: 50,
                                        fit: BoxFit.fill,
                                      ))
                                  : GestureDetector(
                                      onTap: () {
                                        Get.put(InsuranceController())
                                            .pickImage2();
                                      },
                                      child: Image.network(
                                        'https://i.ibb.co/p2Ys14c/imagepic.png',
                                        width: 80,
                                        height: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                            ],
                          ),
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Car book image'.tr,
                          style: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline3!
                                  .fontSize)),
                    ),
                  ),
                  GetBuilder(
                    init: Get.put(InsuranceController()),
                    builder: ((c) => Padding(
                          padding: const EdgeInsets.only(bottom: 10.0, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Get.put(InsuranceController()).image3 != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.file(
                                        Get.put(InsuranceController()).image3!,
                                        width: 80,
                                        height: 50,
                                        fit: BoxFit.fill,
                                      ))
                                  : GestureDetector(
                                      onTap: () {
                                        Get.put(InsuranceController())
                                            .pickImage3();
                                      },
                                      child: Image.network(
                                        'https://i.ibb.co/p2Ys14c/imagepic.png',
                                        width: 80,
                                        height: 50,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                            ],
                          ),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
