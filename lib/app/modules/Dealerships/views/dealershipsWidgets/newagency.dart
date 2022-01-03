// ignore_for_file: file_names
import 'package:car_agency/app/modules/Dealerships/controllers/dealerships_controller.dart';
import 'package:car_agency/app/modules/NewAgencyDetails/views/new_agency_details_view.dart';
import 'package:car_agency/app/routes/app_pages.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Newagency extends GetView<DealershipsController> {
  @override
  Widget build(BuildContext context) {
    DealershipsController c = DealershipsController();
    return Container(
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
                      'New Agency'.tr,
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
                      Get.to(NewAgencyDetailsView());
                    },
                  ),
                ],
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Obx(
                    () => Row(
                      children: c.newagency.map((e) {
                        return Column(
                          children: [
                            Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: GestureDetector(
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
                                    padding: EdgeInsets.all(3),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      child: Image.network(
                                        e['url'].toString(),
                                        width: Get.width / 1.2,
                                        height: 180,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                )),
                            Container(
                              width: Get.width / 1.2,
                              padding:
                                  const EdgeInsets.only(bottom: 8.0, top: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Text(
                                      e['title'].toString(),
                                      style:
                                          Theme.of(context).textTheme.bodyText2,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Flexible(
                                    child: Text(
                                      e['des'].toString() +
                                          " " +
                                          e['dess'].toString(),
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      style:
                                          Theme.of(context).textTheme.subtitle1,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
