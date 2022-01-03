// ignore_for_file: file_names

import 'package:car_agency/app/modules/Cart/controllers/cart_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';

class CartProducts extends GetView<CartController> {
  @override
  Widget build(BuildContext context) {
    // Get.put(CartController()).itemCount.value =
    //     Get.put(CartController()).newList[1]['price'];
    var formatter = NumberFormat('##.000');

    Get.put(CartController()).total = ((CartController()
        .newList
        .map((m) => (m['price']))
        .reduce((a, b) => a + b)));

    Get.put(CartController()).discount = (CartController()
            .newList
            .map((m) => (m['price']))
            .reduce((a, b) => a + b)) *
        (10 / 100);
    return Obx(
      () => Column(
        children: [
          Column(
              children: Get.put(CartController()).newList.map<Widget>((e) {
            return Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0),
                    child: Row(
                      children: [
                        Stack(children: [
                          Image.network(
                            e['url'].toString(),
                            width: 100,
                          ),
                          Positioned(
                            bottom: 0,
                            child: GestureDetector(
                              onTap: () {
                                Get.put(CartController())
                                    .newList
                                    .removeAt(e['id']);
                                Get.put(CartController()).remove = e['price'];
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                                child: Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(bottom: 16.0),
                                  child: Icon(Icons.minimize_rounded,
                                      color: Colors.black),
                                )),
                              ),
                            ),
                          )
                        ]),
                        Expanded(
                            child: Text(
                          e['title'].toString(),
                          overflow: TextOverflow.clip,
                          maxLines: 2,
                        )),
                        Column(
                          children: [
                            Text(e['price'].toString() + " " + 'KD'.tr),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor),
                                  child: IconButton(
                                      icon: Icon(Icons.add,
                                          size: 20, color: AppTheme.white),
                                      onPressed: () {
                                        if (Get.put(CartController())
                                                .itemCount <=
                                            9) {
                                          Get.put(CartController()).itemCount++;
                                        }
                                      }),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    Get.put(CartController())
                                        .itemCount
                                        .toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .headline3!
                                          .fontSize,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40,
                                  height: 40,
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.remove,
                                      color: AppTheme.white,
                                      size: 20,
                                    ),
                                    onPressed: () {
                                      if (Get.put(CartController()).itemCount >=
                                          1) {
                                        Get.put(CartController()).itemCount--;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 1,
                  color: AppTheme.darkgrey,
                  thickness: 1,
                )
              ],
            );
          }).toList()),
          Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total'.tr),
                    GetBuilder(
                        init: Get.put(CartController()),
                        builder: ((c) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 45.0,
                            ),
                            child: Text((Get.put(CartController()).total -
                                    Get.put(CartController()).remove)
                                .toString())))),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
                child: DottedBorder(
                  dashPattern: [8, 3, 8, 3],
                  borderType: BorderType.RRect,
                  radius: Radius.circular(10),
                  color: AppTheme.darkgrey,
                  strokeWidth: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Coupon'.tr,
                          style: TextStyle(
                              color: AppTheme.darkgrey,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline1!
                                  .fontSize,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Discount'.tr),
                    GetBuilder(
                      init: Get.put(CartController()),
                      builder: ((c) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 45.0,
                            ),
                            child: (Get.put(CartController()).total -
                                        Get.put(CartController()).remove) ==
                                    0
                                ? Text(0.0.toString())
                                : Text(Get.put(CartController())
                                    .discount
                                    .toString()),
                          )),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                color: AppTheme.darkgrey,
                thickness: 1,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Balance'.tr),
                    GetBuilder(
                      init: Get.put(CartController()),
                      builder: ((c) => Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15.0,
                            ),
                            child: (Get.put(CartController()).total -
                                        Get.put(CartController()).remove) ==
                                    0
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                    ),
                                    child: Text(0.0.toString() + ' ' + 'KD'.tr,
                                        style: TextStyle(
                                            color: AppTheme.blue,
                                            fontWeight: FontWeight.normal)),
                                  )
                                : Text(
                                    formatter
                                            .format(((Get.put(CartController())
                                                        .total -
                                                    Get.put(CartController())
                                                        .remove) -
                                                (Get.put(CartController())
                                                    .discount)))
                                            .toString() +
                                        ' ' +
                                        'KD'.tr,
                                    style: TextStyle(
                                      color: AppTheme.blue,
                                    ),
                                  ),
                          )),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
