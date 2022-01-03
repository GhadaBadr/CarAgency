import 'package:car_agency/app/modules/NewUser/views/new_user_view.dart';
import 'package:car_agency/app/modules/SingIn/views/sing_in_view.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pricing_controller.dart';

class PricingView extends GetView<PricingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network("https://i.ibb.co/dmd1h1c/logo.png",
                  width: 250, fit: BoxFit.fitWidth),
              SizedBox(
                height: 60,
              ),
              Container(
                width: 250,
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => SingInView());
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: AppTheme.white),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              'Sing In'.tr,
                              style: TextStyle(color: AppTheme.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => NewUserView());
                          },
                          child: Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 2, color: AppTheme.white),
                                borderRadius: BorderRadius.circular(30)),
                            child: Center(
                                child: Text(
                              'New User'.tr,
                              style: TextStyle(color: AppTheme.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Center(
                                child: Text(
                              'Continue'.tr,
                              style: TextStyle(color: AppTheme.white),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
