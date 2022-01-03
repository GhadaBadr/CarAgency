// ignore_for_file: file_names
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ImagesList extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      color: AppTheme.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: controller.imagesList.map<Widget>((e) {
            return Container(
              margin: EdgeInsets.all(2),
              child: Image.network(
                e,
                width: Get.width / 1.9,
                height: 150,
                fit: BoxFit.fill,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
