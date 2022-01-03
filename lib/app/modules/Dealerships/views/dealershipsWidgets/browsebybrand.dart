// ignore_for_file: file_names
import 'package:car_agency/app/modules/BrandDetails/views/brand_details_view.dart';
import 'package:car_agency/app/modules/Dealerships/controllers/dealerships_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Browsebybrand extends GetView<DealershipsController> {
  @override
  Widget build(BuildContext context) {
    DealershipsController c = DealershipsController();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6),
      color: AppTheme.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    'Browse by brand'.tr,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Text(
                    'All'.tr,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  onTap: () {
                    Get.to(() => BrandDetailsView());
                  },
                ),
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: c.brandlist.map<Widget>((e) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                            margin: EdgeInsets.all(3),
                            child: Container(
                              width: 70,
                              height: 60,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor),
                                  borderRadius: BorderRadius.circular(12)),
                              padding: EdgeInsets.all(5),
                              child: Image.network(
                                e['url'].toString(),
                                width: 55,
                                height: 55,
                                fit: BoxFit.contain,
                              ),
                            )),
                      );
                    }).toList(),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
