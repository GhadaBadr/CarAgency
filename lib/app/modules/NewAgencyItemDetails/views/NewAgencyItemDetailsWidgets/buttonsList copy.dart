// ignore_for_file: file_names
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/app/modules/NewAgencyItemDetails/views/NewAgencyItemDetailsWidgets/Tables.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonsList2 extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(top: 3),
        child: Column(
          children: [
            Container(
              color: AppTheme.white,
              width: double.infinity,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: AppTheme.white,
                  child: Obx(
                    () => Container(
                      margin: EdgeInsets.only(
                          left: 10, right: 10, top: 10, bottom: 5),
                      child: Row(
                        children: controller.listbutton2.map<Widget>((e) {
                          return GestureDetector(
                            onTap: () {
                              Get.put(NewAgencyItemDetailsController())
                                  .indexx
                                  .value = e['i'];
                            },
                            child: Obx(
                              () => Container(
                                padding: EdgeInsets.all(8),
                                margin: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                    color:
                                        Get.put(NewAgencyItemDetailsController())
                                                    .indexx
                                                    .value ==
                                                e['i']
                                            ? AppTheme.blue
                                            : AppTheme.white,
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      width: 1,
                                      color:
                                          Get.put(NewAgencyItemDetailsController())
                                                      .indexx
                                                      .value ==
                                                  e['i']
                                              ? AppTheme.blue
                                              : AppTheme.black,
                                    )),
                                child: Text(
                                  e['title'].toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color:
                                        Get.put(NewAgencyItemDetailsController())
                                                    .indexx
                                                    .value ==
                                                e['i']
                                            ? AppTheme.white
                                            : AppTheme.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            if (Get.put(NewAgencyItemDetailsController()).indexx.value == 0)
              Table1()
            else if (Get.put(NewAgencyItemDetailsController()).indexx.value ==
                1)
              Table2()
            else if (Get.put(NewAgencyItemDetailsController()).indexx.value ==
                2)
              Table3()
            else if (Get.put(NewAgencyItemDetailsController()).indexx.value ==
                3)
              Table4()
            else if (Get.put(NewAgencyItemDetailsController()).indexx.value ==
                4)
              Table5()
          ],
        ),
      ),
    );
  }
}
