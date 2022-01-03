// ignore_for_file: file_names

import 'package:car_agency/app/modules/Insurance/controllers/insurance_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Button extends GetView<InsuranceController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  margin:
                      EdgeInsets.only(top: 30, bottom: 10, left: 60, right: 60),
                  decoration: BoxDecoration(
                      color: Theme.of(context).canvasColor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                      child: Text(
                    'Send order'.tr,
                    style: TextStyle(
                        color: AppTheme.white,
                        fontSize:
                            Theme.of(context).textTheme.headline6!.fontSize,
                        fontWeight: FontWeight.normal),
                  ))),
            ),
          )
        ],
      ),
    );
  }
}
