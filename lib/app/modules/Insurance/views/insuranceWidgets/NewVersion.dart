// ignore_for_file: file_names

import 'package:car_agency/app/modules/Insurance/controllers/insurance_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'Widgets/button.dart';
import 'Widgets/imageContainer.dart';
import 'Widgets/insuranceContainer.dart';
import 'Widgets/typeContainer.dart';

class NewVersion extends GetView<InsuranceController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TypeContainer(),
        insuranceContainer(),
        ImageContainer(),
        Button()
      ],
    );
  }
}
