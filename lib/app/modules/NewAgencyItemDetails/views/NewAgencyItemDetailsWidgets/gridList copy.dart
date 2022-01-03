// ignore_for_file: file_names
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';

class GridList2 extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(top: 3),
        color: AppTheme.white,
        child: Container(
          child: ResponsiveGridRow(
              children: controller.listGrid2.map((e) {
            return ResponsiveGridCol(
              lg: 4,
              md: 4,
              sm: 4,
              xl: 4,
              xs: 4,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment(0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SvgPicture.asset(
                          e['url'],
                          height: 30,
                        ),
                      ),
                      Text(
                        e['des'],
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: Theme.of(context)
                                .textTheme
                                .headline3!
                                .fontSize),
                      )
                    ],
                  ),
                ),
              ),
            );
          }).toList()),
        ),
      ),
    );
  }
}
