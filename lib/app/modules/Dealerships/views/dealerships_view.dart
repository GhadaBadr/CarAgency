import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../drawer.dart';
import '../controllers/dealerships_controller.dart';
import 'dealershipsWidgets/Appbar.dart';

class DealershipsView extends GetView<DealershipsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: appbar(),
      ),
    );
  }
}
