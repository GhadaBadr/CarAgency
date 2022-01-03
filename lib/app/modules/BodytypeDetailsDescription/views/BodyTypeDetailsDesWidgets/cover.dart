import 'package:car_agency/app/modules/BodytypeDetailsDescription/controllers/bodytype_details_description_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoverBodytypeDetailsDescription
    extends GetView<BodytypeDetailsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = routeArg['title'];

    return Container(
        child: Stack(children: [
      Image.network(
        "https://i.ibb.co/WcjhfgM/001.png",
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
                          Text('Starting from'.tr,
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
                                child: Text("2950 KD".tr,
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
