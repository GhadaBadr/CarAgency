import 'package:badges/badges.dart';
import 'package:car_agency/app/modules/Cart/controllers/cart_controller.dart';
import 'package:car_agency/app/modules/Cart/views/cart_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../theme.dart';
import '../controllers/store_product_details_controller.dart';

class StoreProductDetailsView extends GetView<StoreProductDetailsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = routeArg['title'];
    final url = routeArg['url'];
    final price = routeArg['price'];
    return Scaffold(
        backgroundColor: AppTheme.white,
        appBar: AppBar(
          title: Text(''),
          centerTitle: true,
          leading: Container(
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 30,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
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
                      animationDuration: Duration(milliseconds: 3000),
                      elevation: 0,
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
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(children: [
                  Container(
                    child: Center(
                      child: Image.network(
                        url,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Text(
                            '1 / 1',
                            style: TextStyle(fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 10),
                  child: Divider(
                    height: 1,
                    color: AppTheme.grey,
                    thickness: 1,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: AppTheme.grey,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(price),
                        ),
                      ),
                      Obx(
                        () => GestureDetector(
                            onTap: () {
                              Get.put(StoreProductDetailsController())
                                      .like
                                      .value =
                                  !Get.put(StoreProductDetailsController())
                                      .like
                                      .value;
                              print(Get.put(StoreProductDetailsController())
                                  .like
                                  .value);
                            },
                            child: Icon(
                              Get.put(StoreProductDetailsController())
                                      .like
                                      .isTrue
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_border,
                              color: Theme.of(context).canvasColor,
                              size: 40,
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      children: [Expanded(child: Text(title))],
                    )),
                Obx(
                  () => Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            children: [
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  Get.put(StoreProductDetailsController())
                                      .i
                                      .value = 0;
                                },
                                child: Container(
                                    padding:
                                        EdgeInsets.only(bottom: 10, top: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 2,
                                                color:
                                                    Get.put(StoreProductDetailsController())
                                                                .i
                                                                .value ==
                                                            0
                                                        ? Theme.of(context)
                                                            .canvasColor
                                                        : AppTheme.white))),
                                    child: Center(
                                      child: Text(
                                        'DETAILS'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color:
                                                Get.put(StoreProductDetailsController())
                                                            .i
                                                            .value ==
                                                        0
                                                    ? Theme.of(context)
                                                        .canvasColor
                                                    : AppTheme.darkgrey),
                                      ),
                                    )),
                              )),
                              Expanded(
                                  child: GestureDetector(
                                onTap: () {
                                  Get.put(StoreProductDetailsController())
                                      .i
                                      .value = 1;
                                },
                                child: Container(
                                    padding:
                                        EdgeInsets.only(bottom: 10, top: 10),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 2,
                                                color:
                                                    Get.put(StoreProductDetailsController())
                                                                .i
                                                                .value ==
                                                            1
                                                        ? Theme.of(context)
                                                            .canvasColor
                                                        : AppTheme.white))),
                                    child: Center(
                                      child: Text(
                                        'SUPPORTED MODELS'.tr,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color:
                                                Get.put(StoreProductDetailsController())
                                                            .i
                                                            .value ==
                                                        1
                                                    ? Theme.of(context)
                                                        .canvasColor
                                                    : AppTheme.darkgrey),
                                      ),
                                    )),
                              )),
                            ],
                          )),
                      if (Get.put(StoreProductDetailsController()).i.value == 0)
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Aromatherapy helps relieve stress and refresh the mind! Air humidification, skin moisturizing. skin aging relieving! E Intelligent water-level detection for water shortage. automatic power-off protection sale and durable! 300mL super-size suitable for car and house! Dumping and leak prevention, human randomly placed freewheeling! nature design Cup shaped    design, small and convenient, suitable for automotive drinking place, office desktop and '
                                .tr,
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .fontSize,
                            ),
                          ),
                        )
                      else if (Get.put(StoreProductDetailsController())
                              .i
                              .value ==
                          1)
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Models supported by the product 0'.tr,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 30.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'It supports any car model'.tr,
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                )
              ],
            ),
          ),
        ),
        bottomSheet: BottomSheet(
          elevation: 0,
          builder: (BuildContext context) {
            return Container(
                child: Obx(
              () => Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                color: AppTheme.white,
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          decoration: BoxDecoration(
                              color: Theme.of(context).canvasColor,
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context).canvasColor,
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                        width: 1, color: AppTheme.white)),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 35,
                                      height: 35,
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
                                              Get.put(CartController())
                                                  .itemCount++;
                                            }
                                          }),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          border: Border(
                                              left: BorderSide(
                                                  width: 1,
                                                  color: AppTheme.white),
                                              right: BorderSide(
                                                  width: 1,
                                                  color: AppTheme.white))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          child: Center(
                                            child: Text(
                                              Get.put(CartController())
                                                  .itemCount
                                                  .toString(),
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: Theme.of(context)
                                                      .textTheme
                                                      .headline6!
                                                      .fontSize,
                                                  color: AppTheme.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 35,
                                      height: 35,
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
                                          if (Get.put(CartController())
                                                  .itemCount >=
                                              1) {
                                            Get.put(CartController())
                                                .itemCount--;
                                          }
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(price,
                                  style: TextStyle(
                                      fontSize: Theme.of(context)
                                          .textTheme
                                          .headline6!
                                          .fontSize,
                                      color: AppTheme.white))
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 7),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  width: 2,
                                  color: Theme.of(context).canvasColor)),
                          child: Icon(Icons.shopping_cart_outlined,
                              size: 30, color: Theme.of(context).canvasColor),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
          },
          onClosing: () {},
        ));
  }
}
