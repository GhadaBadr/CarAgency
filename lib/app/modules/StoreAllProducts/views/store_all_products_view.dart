import 'package:badges/badges.dart';
import 'package:car_agency/app/modules/Cart/controllers/cart_controller.dart';
import 'package:car_agency/app/modules/Cart/views/cart_view.dart';
import 'package:car_agency/app/modules/Search/views/search_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme.dart';
import '../controllers/store_all_products_controller.dart';
import 'StoreAllProductsWidgets/buttonsList.dart';

class StoreAllProductsView extends GetView<StoreAllProductsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final apptitle = routeArg['apptitle'];

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
          leadingWidth: 100,
          leading: Container(
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  onPressed: () {
                    Get.to(() => SearchView());
                  },
                ),
              ],
            ),
          ),
          title: Text(apptitle),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => CartView());
                },
                child: Obx(
                  () => Badge(
                      position: BadgePosition.topEnd(top: -2, end: -1),
                      animationType: BadgeAnimationType.slide,
                      elevation: 0,
                      animationDuration: Duration(milliseconds: 3000),
                      badgeContent: Container(
                        margin: const EdgeInsets.only(top: 1.0),
                        child: Text(
                          Get.put(CartController()).newList.length.toString(),
                          style: TextStyle(fontSize: 12, color: AppTheme.white),
                        ),
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                      )),
                ),
              ),
            )
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [StoreAllProductsButtonsList()],
        ),
      ),
    );
  }
}
