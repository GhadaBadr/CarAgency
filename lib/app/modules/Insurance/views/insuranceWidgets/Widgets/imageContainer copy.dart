// ignore_for_file: file_names

import 'package:car_agency/app/modules/Insurance/controllers/insurance_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../../theme.dart';

class ImageContainer2 extends GetView<InsuranceController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.1,
      margin: EdgeInsets.only(left: 5, right: 5, top: 30, bottom: 10),
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
                  Container(
                    padding: EdgeInsets.only(top: 40, bottom: 20),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('Image of previous document'.tr,
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
                          padding: const EdgeInsets.only(bottom: 30.0, top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Get.put(InsuranceController()).image != null
                                  ? Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Image.file(
                                        Get.put(InsuranceController()).image!,
                                        width: 80,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ))
                                  : GestureDetector(
                                      onTap: () {
                                        Get.put(InsuranceController())
                                            .pickImage4();
                                      },
                                      child: Image.network(
                                        'https://i.ibb.co/p2Ys14c/imagepic.png',
                                        width: 70,
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
