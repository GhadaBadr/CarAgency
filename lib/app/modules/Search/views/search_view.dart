import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme.dart';
import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.white,
      appBar: AppBar(
        title: Text('Search'.tr),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            list('Regions'.tr, SearchController().Regions, context,
                AppTheme.darkgrey, Get.put(SearchController()).index0),
            list('Category'.tr, SearchController().Category, context,
                AppTheme.darkgrey, Get.put(SearchController()).index1),
            list('Car Type'.tr, SearchController().CarType, context,
                AppTheme.darkgrey, Get.put(SearchController()).index2),
            list('Car Madel'.tr, SearchController().CarModel, context,
                AppTheme.darkgrey, Get.put(SearchController()).index3),
            list(
                'Year Manufactured'.tr,
                SearchController().YearManufactured,
                context,
                Colors.transparent,
                Get.put(SearchController()).index4),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              )),
                              backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).canvasColor)),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Search'.tr),
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget list(
      String title, RxList x, BuildContext context, Color color, RxInt i) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0),
      color: AppTheme.white,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(title.tr),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Obx(
                () => Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                      children: x.map<Widget>((e) {
                    return GestureDetector(
                      onTap: () {
                        i.value = e['i'];
                      },
                      child: Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            color: i.value == e['i']
                                ? Theme.of(context).canvasColor
                                : AppTheme.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              width: 1,
                              color: i.value == e['i']
                                  ? Theme.of(context).canvasColor
                                  : AppTheme.darkgrey,
                            )),
                        child: Text(
                          e['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: i.value == e['i']
                                ? AppTheme.white
                                : AppTheme.black,
                          ),
                        ),
                      ),
                    );
                  }).toList()),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0, bottom: 10),
            child: Divider(
              height: 1,
              thickness: 1,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
