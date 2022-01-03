// ignore_for_file: file_names
import 'package:car_agency/app/modules/BodytypeDetailsDescription/views/BodyTypeDetailsDesWidgets/gridList.dart';
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodytypeDetailsDescriptionButtonsList
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = routeArg['title'];
    return Column(
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
                  child: Row(children: [
                    GestureDetector(
                      onTap: () {
                        Get.put(NewAgencyItemDetailsController()).index.value =
                            0;
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: Get.put(NewAgencyItemDetailsController())
                                        .index
                                        .value ==
                                    0
                                ? AppTheme.blue
                                : AppTheme.white,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              width: 1,
                              color: Get.put(NewAgencyItemDetailsController())
                                          .index
                                          .value ==
                                      0
                                  ? AppTheme.blue
                                  : AppTheme.black,
                            )),
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Get.put(NewAgencyItemDetailsController())
                                        .index
                                        .value ==
                                    0
                                ? AppTheme.white
                                : AppTheme.black,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ),
        if (Get.put(NewAgencyItemDetailsController()).index.value == 0)
          BodytypeDetailsDescriptionGridList()
      ],
    );
  }
}
