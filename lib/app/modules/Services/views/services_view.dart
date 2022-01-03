import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../drawer.dart';
import '../controllers/services_controller.dart';
import 'ServicesWidgets/servicesgrid.dart';

class ServicesView extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      drawer: drawer(),
      appBar: AppBar(
        title: Text('Services'.tr),
        centerTitle: true,
      ),
      body: Obx(
        () => SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: ServicesController().list.map<Widget>((e) {
                      return Column(
                        children: [
                          Obx(
                            () => GestureDetector(
                              onTap: () {
                                Get.put(ServicesController()).index.value =
                                    e['i'];
                              },
                              child: Container(
                                margin: EdgeInsets.all(6),
                                height: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        width: 1, color: AppTheme.bluegrey),
                                    color: Get.put(ServicesController())
                                                .index
                                                .value ==
                                            e['i']
                                        ? Color(0xFFC3D6F7)
                                        : Colors.transparent),
                                child: Image.network(
                                  e['url'],
                                  width: 80,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    e['title'],
                                    style:
                                        Theme.of(context).textTheme.headline3,
                                    overflow: TextOverflow.clip,
                                    maxLines: 1,
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
            if (Get.put(ServicesController()).index.value == 0)
              ServicesGrid0()
            else if (Get.put(ServicesController()).index.value == 1)
              ServicesGrid1()
            else if (Get.put(ServicesController()).index.value == 2)
              ServicesGrid2()
            else if (Get.put(ServicesController()).index.value == 3)
              ServicesGrid3()
            else if (Get.put(ServicesController()).index.value == 4)
              ServicesGrid4()
            else if (Get.put(ServicesController()).index.value == 5)
              ServicesGrid5()
          ]),
        ),
      ),
    );
  }
}
