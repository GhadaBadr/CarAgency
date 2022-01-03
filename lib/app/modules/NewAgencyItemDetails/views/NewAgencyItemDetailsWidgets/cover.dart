import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cover extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = routeArg['title'];
    final url = routeArg['url'];
    final des = routeArg['des'];
    final dess = routeArg['dess'];
    return Container(
        child: Stack(children: [
      Image.network(
        url,
        width: double.infinity,
        height: 280,
        fit: BoxFit.cover,
      ),
      Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(color: AppTheme.white),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.share_rounded,
                      color: AppTheme.white,
                      size: 30,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(des,
                              softWrap: true,
                              style: TextStyle(
                                  color: AppTheme.white,
                                  fontWeight: FontWeight.normal)),
                          Container(
                              width: 120,
                              margin: EdgeInsets.only(top: 0),
                              padding: EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 2,
                                    color: AppTheme.white,
                                  )),
                              child: Center(
                                child: Text(dess,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.normal)),
                              )),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ))
    ]));
  }
}
