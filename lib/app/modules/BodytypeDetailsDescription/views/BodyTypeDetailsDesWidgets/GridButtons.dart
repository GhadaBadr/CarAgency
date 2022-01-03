// ignore_for_file: file_names
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:responsive_grid/responsive_grid.dart';

class BodytypeDetailsDescriptionGridButtons
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.only(top: 3),
        color: AppTheme.white,
        child: Container(
          margin: EdgeInsets.all(10),
          child: ResponsiveGridRow(
              children: controller.gridButtons.map((e) {
            return ResponsiveGridCol(
              lg: 6,
              md: 6,
              sm: 6,
              xl: 6,
              xs: 6,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      color: AppTheme.blue,
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: SvgPicture.asset(
                          e['url'],
                          width: 27,
                          height: 27,
                          fit: BoxFit.fill,
                          color: AppTheme.white,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            e['title'],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: AppTheme.white,
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .headline1!
                                    .fontSize),
                          ),
                        ),
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
