// ignore_for_file: file_names
import 'package:car_agency/app/modules/Dealerships/controllers/dealerships_controller.dart';
import 'package:car_agency/app/routes/app_pages.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Browsebybodytype extends GetView<DealershipsController> {
  @override
  Widget build(BuildContext context) {
    DealershipsController c = DealershipsController();
    return Container(
      color: AppTheme.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: InkWell(
              child: Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  'Browse by body type'.tr,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              onTap: () {},
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: c.carlist.map<Widget>((e) {
                      return Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.BODYTYPE_DETAILS,
                                  arguments: {'title': e['title']});
                            },
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(3),
                                  child: Image.network(
                                    e['url'].toString(),
                                    width: 75,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  e['title'].toString(),
                                  style: Theme.of(context).textTheme.subtitle1,
                                )
                              ],
                            ),
                          ));
                    }).toList(),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
