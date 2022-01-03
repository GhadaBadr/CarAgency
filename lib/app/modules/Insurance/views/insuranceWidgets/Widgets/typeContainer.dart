// ignore_for_file: file_names

import 'package:car_agency/app/modules/Insurance/controllers/insurance_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../../../theme.dart';

class TypeContainer extends GetView<InsuranceController> {
  Widget drop(String title, RxString x, RxList l, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(title.tr,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                    fontSize: Theme.of(context).textTheme.headline3!.fontSize)),
          ),
          Obx(
            () => Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: AppTheme.grey2,
                    borderRadius: BorderRadius.circular(2)),
                height: 40,
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                    hint: x.value.tr == x.value.tr
                        ? Center(
                            child: Text(x.value.tr,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                    color: AppTheme.darkgrey,
                                    fontSize: Theme.of(context)
                                        .textTheme
                                        .headline3!
                                        .fontSize)),
                          )
                        : Center(
                            child: Text(
                              x.value.tr,
                              style: TextStyle(
                                  color: AppTheme.darkgrey,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .fontSize),
                            ),
                          ),
                    isExpanded: true,
                    dropdownColor: AppTheme.grey,
                    items: l.map(
                      (val) {
                        return DropdownMenuItem<String>(
                          value: val,
                          child: Center(
                            child: Text(
                              val,
                              style: TextStyle(
                                  color: AppTheme.darkgrey,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .fontSize),
                            ),
                          ),
                        );
                      },
                    ).toList(),
                    onChanged: (val) {
                      x.value = val.toString();
                    },
                  ),
                )),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.1,
      margin: EdgeInsets.only(left: 5, right: 5, top: 40, bottom: 10),
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
              child: Row(
                children: [
                  Expanded(
                    child: drop(
                        'Car Type'.tr,
                        Get.put(InsuranceController()).dropDownValue.obs,
                        InsuranceController().type,
                        context),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5.0),
              child: IntrinsicHeight(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: drop(
                            'Car Model'.tr,
                            Get.put(InsuranceController()).dropDownValue1.obs,
                            InsuranceController().model,
                            context),
                      ),
                      Expanded(
                        child: drop(
                            'Manufacturing Year'.tr,
                            Get.put(InsuranceController()).dropDownValue2.obs,
                            InsuranceController().year,
                            context),
                      ),
                    ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 5),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Center(
                        child: Text('Car price'.tr,
                            style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .headline3!
                                    .fontSize)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 5),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              labelStyle: TextStyle(
                                  color: AppTheme.darkgrey,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .fontSize),
                              fillColor: AppTheme.grey2,
                              filled: true,
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: 'Enter the approximate price'.tr,
                              hintStyle: TextStyle(
                                  color: AppTheme.darkgrey,
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headline3!
                                      .fontSize)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
