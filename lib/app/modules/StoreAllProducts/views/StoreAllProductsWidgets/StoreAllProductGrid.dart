// ignore_for_file: file_names
import 'package:car_agency/app/modules/StoreAllProducts/controllers/store_all_products_controller.dart';
import 'package:car_agency/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../../local.dart';
import '../../../../../theme.dart';

Widget listL(BuildContext context, RxList x) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10),
    width: double.infinity,
    child: ResponsiveGridRow(
      children: x.map((e) {
        return ResponsiveGridCol(
            lg: 6,
            md: 6,
            xl: 6,
            sm: 6,
            xs: 6,
            child: Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Routes.STORE_PRODUCT_DETAILS,
                      arguments: {
                        'url': e['url'],
                        'title': e['title'],
                        'price': e['price']
                      });
                },
                child: Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: AppTheme.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Image.network(
                          e['url'],
                          width: 140,
                          height: 170,
                        ),
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
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .headline6!
                                              .fontSize,
                                          fontWeight: FontWeight.normal))),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      e['price'],
                                      style: TextStyle(
                                          fontSize: Theme.of(context)
                                              .textTheme
                                              .headline3!
                                              .fontSize,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    if (e['pprice'] != '')
                                      Text(e['pprice'],
                                          style: TextStyle(
                                              color: AppTheme.red,
                                              fontWeight: FontWeight.normal,
                                              fontSize: Theme.of(context)
                                                  .textTheme
                                                  .headline3!
                                                  .fontSize,
                                              decoration:
                                                  TextDecoration.lineThrough))
                                  ],
                                ),
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
                                            bottomRight: Radius.circular(5))
                                        : BorderRadius.only(
                                            bottomLeft: Radius.circular(5))),
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
              ),
            ));
      }).toList(),
    ),
  );
}

class StoreAllProductsGrid0 extends GetView<StoreAllProductsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final list = routeArg['list'];
    return listL(context, list);
  }
}

class StoreAllProductsGrid1 extends GetView<StoreAllProductsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final list = routeArg['list'];
    final listt = [];
    for (var i = 0; i < list!.length; i++) {
      if (i % 2 == 0) {
        // index is even
        listt.add((list[i]));
      }
    }
    // List sub = list.toString().indexOf('1').;
    return listL(context, listt.obs);
  }
}

class StoreAllProductsGrid2 extends GetView<StoreAllProductsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final list = routeArg['list'];
    final listt = [];
    for (var i = 0; i < list!.length; i++) {
      if (i % 2 != 0) {
        // index is even
        listt.add((list[i]));
      }
    }
    // List sub = list.toString().indexOf('1').;
    return listL(context, listt.obs);
  }
}
