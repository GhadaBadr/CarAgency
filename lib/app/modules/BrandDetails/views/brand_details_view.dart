import 'package:car_agency/app/routes/app_pages.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/brand_details_controller.dart';

class BrandDetailsView extends GetView<BrandDetailsController> {
  @override
  Widget build(BuildContext context) {
    BrandDetailsController b = BrandDetailsController();
    return Scaffold(
      appBar: AppBar(
          title: Text('Agencies'.tr),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Get.back();
            },
          )),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            Container(
                child: Obx(() => Column(
                      children: b.deslist.map((e) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.BRAND_DETAILS_DESCRIPTION,
                                arguments: {
                                  'url': e['url'],
                                  'logo': e['logo']
                                });
                          },
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(bottom: 3),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            color: AppTheme.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Image.network(
                                    e['url'],
                                    height: 50,
                                  ),
                                )),
                                Expanded(
                                    flex: 3,
                                    child: Column(
                                      children: [
                                        Text(e['title'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold)),
                                        SizedBox(
                                            child: Text(
                                          e['des'],
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline4,
                                        ))
                                      ],
                                    )),
                                Expanded(
                                    child: Image.network(
                                  e['logo'],
                                  height: 80,
                                )),
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    )))
          ],
        ),
      ),
    );
  }
}
