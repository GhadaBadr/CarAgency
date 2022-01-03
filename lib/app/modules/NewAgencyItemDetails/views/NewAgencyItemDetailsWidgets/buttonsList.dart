// ignore_for_file: file_names
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/app/modules/NewAgencyItemDetails/views/NewAgencyItemDetailsWidgets/gridList%20copy.dart';
import 'package:car_agency/app/modules/NewAgencyItemDetails/views/NewAgencyItemDetailsWidgets/gridList.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonsList extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Container(
            color: AppTheme.white,
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Obx(
                  () => Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Row(
                      children: controller.listbutton.map<Widget>((e) {
                        return GestureDetector(
                          onTap: () {
                            Get.put(NewAgencyItemDetailsController())
                                .index
                                .value = e['i'];
                          },
                          child: Obx(
                            () => Container(
                              padding: EdgeInsets.all(8),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              decoration: BoxDecoration(
                                  color:
                                      Get.put(NewAgencyItemDetailsController())
                                                  .index
                                                  .value ==
                                              e['i']
                                          ? AppTheme.blue
                                          : AppTheme.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        Get.put(NewAgencyItemDetailsController())
                                                    .index
                                                    .value ==
                                                e['i']
                                            ? AppTheme.blue
                                            : AppTheme.black,
                                  )),
                              child: Text(
                                e['title'].toString(),
                                style: TextStyle(
                                  color:
                                      Get.put(NewAgencyItemDetailsController())
                                                  .index
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
          if (Get.put(NewAgencyItemDetailsController()).index.value == 0)
            GridList()
          else if (Get.put(NewAgencyItemDetailsController()).index.value == 1)
            GridList2()
        ],
      ),
    );
  }
}
