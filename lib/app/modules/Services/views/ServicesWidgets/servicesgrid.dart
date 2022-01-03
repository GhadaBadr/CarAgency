// ignore_for_file: non_constant_identifier_names

import 'package:car_agency/app/modules/Services/controllers/services_controller.dart';
import 'package:car_agency/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';

Widget List(BuildContext context, RxList x) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: ResponsiveGridRow(
        children: x.map((e) {
          return ResponsiveGridCol(
              lg: 6,
              md: 6,
              xl: 6,
              sm: 6,
              xs: 6,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        width: 1, color: Theme.of(context).primaryColor)),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.SERVICES_GRID_ITEM_DETAILS,
                            arguments: {'title': e['title']});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Image.network(
                          e['url'],
                          width: 80,
                          height: 90,
                          fit: BoxFit.fill,
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
                              padding:
                                  const EdgeInsets.only(top: 5, bottom: 10),
                              child: Text(
                                e['title'],
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .headline5!
                                      .fontSize,
                                ),
                                maxLines: 1,
                                softWrap: false,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ));
        }).toList(),
      ),
    ),
  );
}

class ServicesGrid0 extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return List(context, ServicesController().ServicesGridlist0);
  }
}

class ServicesGrid1 extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return List(context, ServicesController().ServicesGridlist1);
  }
}

class ServicesGrid2 extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return List(context, ServicesController().ServicesGridlist2);
  }
}

class ServicesGrid3 extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return List(context, ServicesController().ServicesGridlist3);
  }
}

class ServicesGrid4 extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return List(context, ServicesController().ServicesGridlist4);
  }
}

class ServicesGrid5 extends GetView<ServicesController> {
  @override
  Widget build(BuildContext context) {
    return List(context, ServicesController().ServicesGridlist5);
  }
}
