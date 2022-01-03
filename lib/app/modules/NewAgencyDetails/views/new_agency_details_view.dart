import 'package:car_agency/app/modules/Dealerships/controllers/dealerships_controller.dart';
import 'package:car_agency/app/routes/app_pages.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/new_agency_details_controller.dart';

class NewAgencyDetailsView extends GetView<NewAgencyDetailsController> {
  @override
  Widget build(BuildContext context) {
    DealershipsController c = DealershipsController();
    return Scaffold(
      appBar: AppBar(
        title: Text('New Agencies'.tr),
        centerTitle: true,
      ),
      body: Container(
        color: AppTheme.white,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Obx(
              () => Container(
                child: Column(
                  children: c.newagency.map((e) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.NEW_AGENCY_ITEM_DETAILS,
                                  arguments: {
                                    'title': e['title'],
                                    'url': e['url'],
                                    'des': e['des'],
                                    'dess': e['dess']
                                  });
                            },
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12),
                                    topRight: Radius.circular(12)),
                                child: Image.network(
                                  e['url'].toString(),
                                  width: Get.width,
                                  height: 220,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding:
                                const EdgeInsets.only(bottom: 10.0, top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  e['title'].toString(),
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                Flexible(
                                  child: Container(
                                    child: Text(
                                      e['des'].toString() +
                                          e['dess'].toString(),
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
