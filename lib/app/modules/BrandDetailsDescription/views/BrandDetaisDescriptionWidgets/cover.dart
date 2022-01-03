import 'package:car_agency/app/modules/BodytypeDetailsDescription/controllers/bodytype_details_description_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CoverBrandDetailsDescription
    extends GetView<BodytypeDetailsDescriptionController> {
  @override
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final url = routeArg['url'];
    // final logo = routeArg['logo'];

    return Container(
        child: Stack(children: [
      Image.network(
        "https://i.ibb.co/WcjhfgM/001.png",
        width: double.infinity,
        height: 300,
        fit: BoxFit.cover,
      ),
      Positioned(
          left: 0,
          right: 0,
          bottom: 10,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        url,
                        height: 40,
                        width: 60,
                      ),
                      Image.network("https://i.ibb.co/S6ZgZRL/modal.png",
                          width: 80, height: 40)
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.call_rounded,
                        color: AppTheme.white,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_pin,
                        color: AppTheme.white,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        color: AppTheme.white,
                        size: 25,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.share_rounded,
                        color: AppTheme.white,
                        size: 25,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ))
    ]));
  }
}
