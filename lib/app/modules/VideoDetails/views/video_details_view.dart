import 'package:car_agency/app/modules/Dealerships/controllers/dealerships_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/video_details_controller.dart';

class VideoDetailsView extends GetView<VideoDetailsController> {
  @override
  Widget build(BuildContext context) {
    DealershipsController c = DealershipsController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos'.tr),
        centerTitle: true,
      ),
      body: Container(
        color: AppTheme.white,
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Obx(
                () => Column(
                  children: c.videolist.map<Widget>((e) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Theme.of(context).primaryColor),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              launchURL(e['link'].toString());
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              child: Stack(children: [
                                Image.network(
                                  e['url'].toString(),
                                  width: Get.width,
                                  fit: BoxFit.contain,
                                ),
                                Positioned(
                                    left: 100,
                                    right: 100,
                                    top: 20,
                                    bottom: 20,
                                    child: Image.network(
                                        "https://i.ibb.co/mbDfw3X/43-438895-play-button-overlay-png-white-video-play-button.png"))
                              ]),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(bottom: 10.0, top: 10),
                            child: Center(
                              child: Text(
                                e['title'].toString(),
                                // style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ),
            )),
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
