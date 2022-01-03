// ignore_for_file: camel_case_types

import 'package:car_agency/app/routes/app_pages.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import 'local.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  Widget divider() {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Divider(color: Colors.white, height: 0),
    );
  }

  Widget listtile(String url, String title, String f) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      horizontalTitleGap: 5,
      leading: Image.network(
        url,
        width: 28,
      ),
      title: Text(title.tr),
      onTap: () {
        Navigator.pushNamed(context, f);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).canvasColor,
      child: Column(
        children: <Widget>[
          Expanded(
            // ListView contains a group of widgets that scroll inside the drawer
            child: ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.0,
                                height: 80.0,
                                padding: EdgeInsets.all(1.0),
                                child: CircleAvatar(
                                  backgroundImage: NetworkImage(
                                      "https://i.ibb.co/G7J994t/menu.jpg"),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'New User'.tr,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                    ],
                                  )),
                            ]),
                      ),
                    ],
                  ),
                ),
                listtile(
                    "https://i.ibb.co/rkNGWqd/home.jpg", 'Home', Routes.HOME),
                divider(),
                listtile("https://i.ibb.co/mTyy9Q6/chart.jpg", 'Motery Shop',
                    Routes.STORE),
                divider(),
                GestureDetector(
                  onTap: () {
                    if (LocalizationService.langs.last == 'English') {
                      LocalizationService.langs.last = ('اللغة العربيه');
                      print(LocalizationService.langs.last);
                      setState(() {
                        LocalizationService().changeLocale(
                            LocalizationService.langs.last.toString());
                      });
                    } else if (LocalizationService.langs.last ==
                        'اللغة العربيه') {
                      LocalizationService.langs.last = ('English');
                      print(LocalizationService.langs.last);
                      setState(() {
                        LocalizationService().changeLocale(
                            LocalizationService.langs.last.toString());
                      });
                    }
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    horizontalTitleGap: 5,
                    leading: Image.network(
                      "https://i.ibb.co/vJZVPWh/lang.jpg",
                      width: 28,
                    ),
                    title: Text('Language'.tr),
                  ),
                ),
                divider(),
                listtile("https://i.ibb.co/YB4Db99/logout.jpg", 'Sing In',
                    Routes.PRICING),
                SizedBox(
                  height: 20,
                ),
                listtile("https://i.ibb.co/1rY1K5Y/info.jpg", 'About App', ''),
                divider(),
                listtile("https://i.ibb.co/FgM66jj/terms.jpg",
                    'Terms and Conditions', ''),
              ],
            ),
          ),
          // This container holds the align
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Image.network(
                        "https://i.ibb.co/8N91ySc/twitter.jpg",
                        width: 30,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Image.network(
                        "https://i.ibb.co/NxrSyV2/insta.jpg",
                        width: 30,
                      ),
                      onTap: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: Image.network(
                        "https://i.ibb.co/X4WvQfY/whats.jpg",
                        width: 30,
                      ),
                      onTap: () {},
                    ),
                  )
                ],
              ),
            )),
          )
        ],
      ),
    ));
  }
}
