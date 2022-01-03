import 'package:car_agency/app/modules/Dealerships/controllers/dealerships_controller.dart';
import 'package:car_agency/app/modules/VideoDetails/views/video_details_view.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: camel_case_types
class video extends GetView<DealershipsController> {
  @override
  Widget build(BuildContext context) {
    DealershipsController c = DealershipsController();
    return Container(
      margin: EdgeInsets.only(top: 6),
      color: AppTheme.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  child: Text(
                    'Video'.tr,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  onTap: () {},
                ),
                InkWell(
                  child: Text(
                    'All'.tr,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  onTap: () {
                    Get.to(VideoDetailsView());
                  },
                ),
              ],
            ),
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                child: Obx(
                  () => Row(
                    children: c.videolist.map<Widget>((e) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              launchURL(e['link'].toString());
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10)),
                                  child: Stack(children: [
                                    Image.network(
                                      e['url'].toString(),
                                      width: Get.width / 1.2,
                                      fit: BoxFit.contain,
                                    ),
                                    Positioned(
                                        left: 100,
                                        right: 100,
                                        top: 35,
                                        child: Image.network(
                                            "https://i.ibb.co/mbDfw3X/43-438895-play-button-overlay-png-white-video-play-button.png"))
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0, top: 5),
                            child: Center(
                              child: Text(
                                e['title'].toString(),
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                          )
                        ],
                      );
                    }).toList(),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
