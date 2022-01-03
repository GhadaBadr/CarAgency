import 'package:car_agency/app/modules/ServicesGridItemDetails/views/ServicesGridItemDetailsWidgets/ItemDescription.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/services_grid_item_details_controller.dart';

class ServicesGridItemDetailsView
    extends GetView<ServicesGridItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = routeArg['title'];
    return Scaffold(
        backgroundColor: AppTheme.white,
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Obx(
          () => SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: ServicesGridItemDetailsController()
                          .list
                          .map<Widget>((e) {
                        return Column(
                          children: [
                            Obx(
                              () => GestureDetector(
                                onTap: () {
                                  Get.put(ServicesGridItemDetailsController())
                                      .index
                                      .value = e['i'];
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 80,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          width: 1, color: AppTheme.bluegrey),
                                      color:
                                          Get.put(ServicesGridItemDetailsController())
                                                      .index
                                                      .value ==
                                                  e['i']
                                              ? Color(0xFFC3D6F7)
                                              : Colors.transparent),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: Image.network(
                                      e['url'],
                                      width: 80,
                                      fit: BoxFit.fitWidth,
                                    ),
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
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Text(
                                        e['title'],
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3,
                                        overflow: TextOverflow.clip,
                                        maxLines: 1,
                                      ),
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
              Row(
                children: [
                  Expanded(
                      child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Theme.of(context).primaryColor,
                  )),
                ],
              ),
              if (Get.put(ServicesGridItemDetailsController()).index.value == 0)
                GridItemDescrptions0()
              else if (Get.put(ServicesGridItemDetailsController())
                      .index
                      .value ==
                  1)
                GridItemDescrptions1()
              else if (Get.put(ServicesGridItemDetailsController())
                      .index
                      .value ==
                  2)
                GridItemDescrptions2()
            ]),
          ),
        ),
        bottomSheet: BottomSheet(
          elevation: 0.0,
          backgroundColor: AppTheme.white,
          onClosing: () {},
          builder: (BuildContext context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                    child: Container(
                      height: 80,
                    ),
                    flex: 1),
                Expanded(
                  flex: 7,
                  child: Container(
                    height: 80,
                    // width: Get.width / 1.5,
                    child: Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppTheme.blue),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                  child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  '0.000 KD'.tr,
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .fontSize),
                                ),
                              )),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text('Proceed'.tr,
                                          style: TextStyle(
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .headline6!
                                                  .fontSize)),
                                      Icon(Icons.navigate_next_rounded)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                      height: 80,
                    ),
                    flex: 1),
              ],
            );
          },
        ));
  }
}
