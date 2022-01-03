import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../drawer.dart';
import '../../../../theme.dart';
import '../controllers/insurance_controller.dart';
import 'insuranceWidgets/toggleButtons.dart';

class InsuranceView extends GetView<InsuranceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      drawer: drawer(),
      appBar: AppBar(title: Text('Insurance'.tr), centerTitle: true, actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
          child: GestureDetector(
            onTap: () {},
            child: Badge(
                position: BadgePosition.topEnd(top: -5, end: -5),
                animationType: BadgeAnimationType.slide,
                animationDuration: Duration(milliseconds: 3000),
                badgeContent: Text(
                  '12',
                  style: TextStyle(fontSize: 12, color: AppTheme.white),
                ),
                child: Icon(
                  Icons.notifications,
                  size: 30,
                )),
          ),
        )
      ]),
      body: SingleChildScrollView(
          child: Column(
        children: [InsuranceToggleButtons()],
      )),
    );
  }
}
