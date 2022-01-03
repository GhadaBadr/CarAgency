// ignore_for_file: file_names
import 'dart:ui';

import 'package:car_agency/app/modules/Store/controllers/store_controller.dart';
import 'package:car_agency/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../local.dart';
import '../../../../../theme.dart';

class SunocoList extends GetView<StoreController> {
  @override
  Widget build(BuildContext context) {
    String apptitle = 'Sunoco'.tr;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.network(
                          "https://i.ibb.co/YjTVj70/sunoco3c.jpg",
                          width: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          apptitle,
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Text(
                    'All'.tr,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Routes.STORE_ALL_PRODUCTS,
                        arguments: {
                          'apptitle': apptitle,
                          'list': StoreController().sunocoList
                        });
                  },
                ),
              ],
            ),
          ),
          Container(
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: StoreController().sunocoList.map<Widget>((e) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.STORE_PRODUCT_DETAILS,
                                arguments: {
                                  'url': e['url'],
                                  'title': e['title'],
                                  'price': e['price']
                                });
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: AppTheme.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.network(
                                  e['url'],
                                  width: 140,
                                  height: 170,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width: 150,
                                    child: Row(
                                      children: [
                                        Expanded(
                                            child: Text(e['title'],
                                                maxLines: 2,
                                                overflow: TextOverflow.clip,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal))),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 180,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5),
                                        child: Column(
                                          children: [
                                            Text(
                                              e['price'],
                                              style: TextStyle(
                                                  fontSize: Theme.of(context)
                                                      .textTheme
                                                      .headline3!
                                                      .fontSize,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ),
                                            if (e['pprice'] != '')
                                              Text(e['pprice'],
                                                  style: TextStyle(
                                                      fontSize:
                                                          Theme.of(context)
                                                              .textTheme
                                                              .headline6!
                                                              .fontSize,
                                                      color: AppTheme.red,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                      decoration: TextDecoration
                                                          .lineThrough))
                                          ],
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 13, vertical: 10),
                                          decoration: BoxDecoration(
                                              color: AppTheme.lightMov,
                                              borderRadius: (LocalizationService
                                                          .langs.last ==
                                                      'English')
                                                  ? BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(5))
                                                  : BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(5))),
                                          child: Icon(
                                            Icons.add_shopping_cart_rounded,
                                            color: AppTheme.white,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
