// ignore_for_file: file_names
import 'package:car_agency/app/modules/ServicesGridItemDetails/controllers/services_grid_item_details_controller.dart';
import 'package:car_agency/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

Widget list(BuildContext context, RxList x) {
  return Column(
    children: [
      Column(
          children: x.map<Widget>((e) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, Routes.GRID_ITEM_DESCRPTIONS_DETAILS,
                arguments: {
                  'title': e['title'],
                  'price': e['price'],
                  'des': e['des']
                });
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, bottom: 5, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 2),
                      child: Text(e['title']),
                    ),
                    Text(
                      e['price'],
                      style: TextStyle(fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 10),
                      child: Text(
                        e['des'],
                        style: Theme.of(context).textTheme.headline4,
                        maxLines: 2,
                        overflow: TextOverflow.clip,
                        softWrap: true,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      height: 1,
                      thickness: 1,
                      color: Theme.of(context).primaryColor,
                    )),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList()),
      SizedBox(
        height: 80,
      )
    ],
  );
}

class GridItemDescrptions0 extends GetView<ServicesGridItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return list(context, ServicesGridItemDetailsController().Des0);
  }
}

class GridItemDescrptions1 extends GetView<ServicesGridItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return list(context, ServicesGridItemDetailsController().Des1);
  }
}

class GridItemDescrptions2 extends GetView<ServicesGridItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return list(context, ServicesGridItemDetailsController().Des2);
  }
}
