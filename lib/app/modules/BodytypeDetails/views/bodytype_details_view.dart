import 'package:car_agency/app/routes/app_pages.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/bodytype_details_controller.dart';

class BodytypeDetailsView extends GetView<BodytypeDetailsController> {
  @override
  Widget build(BuildContext context) {
    BodytypeDetailsController b = BodytypeDetailsController();
    final routeArg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final title = routeArg['title'];
    return Scaffold(
      appBar: AppBar(
          title: Text(title),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
            ),
            onPressed: () {
              Get.back();
            },
          )),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: ListView(
          children: [
            Container(
              child: Obx(
                () => Column(
                  children: b.BodytypeDetails.map((e) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 3),
                      color: AppTheme.white,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, Routes.BODYTYPE_DETAILS_DESCRIPTION,
                                  arguments: {
                                    'title': e['title'],
                                  });
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Image.network(e['url'].toString(),
                                        height: 110, fit: BoxFit.contain),
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: Get.width / 1.6,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            e['title']
                                                                .toString(),
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline5,
                                                          ),
                                                          Text(
                                                            e['des'].toString(),
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headline6,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Image.network(
                                                        e['logo'].toString(),
                                                        width: Get.width / 6,
                                                        height: 40,
                                                      ),
                                                    )
                                                  ]),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: Get.width / 2.7,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              SvgPicture.asset(
                                                                "lib/Assets/icon/6.svg",
                                                                width: 25,
                                                                height: 25,
                                                              ),
                                                              Text(
                                                                  e['des1']
                                                                      .toString(),
                                                                  maxLines: 1,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .subtitle2)
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              SvgPicture.asset(
                                                                "lib/Assets/icon/5.svg",
                                                                width: 25,
                                                                height: 25,
                                                              ),
                                                              Text(
                                                                  e['des2']
                                                                      .toString(),
                                                                  maxLines: 1,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .subtitle2)
                                                            ],
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Column(
                                                            children: [
                                                              SvgPicture.asset(
                                                                "lib/Assets/icon/2.svg",
                                                                width: 25,
                                                                height: 25,
                                                              ),
                                                              Text(
                                                                  e['des3']
                                                                      .toString(),
                                                                  maxLines: 1,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .subtitle2)
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Wrap(
                                                      alignment:
                                                          WrapAlignment.start,
                                                      children: e['c']
                                                          .map<Widget>((e) {
                                                        return Container(
                                                            margin:
                                                                EdgeInsets.all(
                                                                    2),
                                                            decoration:
                                                                BoxDecoration(
                                                              shape: BoxShape
                                                                  .circle,
                                                              border: Border.all(
                                                                  width: 1,
                                                                  color: Colors
                                                                      .black),
                                                              color: e,
                                                            ),
                                                            width: 13,
                                                            height: 13);
                                                      }).toList(),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
