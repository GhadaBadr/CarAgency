// ignore_for_file: file_names
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/app/modules/StoreAllProducts/controllers/store_all_products_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'StoreAllProductGrid.dart';

class StoreAllProductsButtonsList extends GetView<StoreAllProductsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
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
                              margin: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color:
                                      Get.put(NewAgencyItemDetailsController())
                                                  .index
                                                  .value ==
                                              e['i']
                                          ? Theme.of(context).canvasColor
                                          : Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    width: 1,
                                    color:
                                        Get.put(NewAgencyItemDetailsController())
                                                    .index
                                                    .value ==
                                                e['i']
                                            ? Theme.of(context).canvasColor
                                            : AppTheme.darkgrey,
                                  )),
                              child: Text(
                                e['title'].toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.normal,
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
            StoreAllProductsGrid0()
          else if (Get.put(NewAgencyItemDetailsController()).index.value == 1)
            StoreAllProductsGrid1()
          else if (Get.put(NewAgencyItemDetailsController()).index.value == 2)
            StoreAllProductsGrid2()
        ],
      ),
    );
  }
}
