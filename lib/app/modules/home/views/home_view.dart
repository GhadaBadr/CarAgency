// ignore_for_file: must_be_immutable

import 'package:car_agency/app/modules/home/views/HomeWidgets/bottomnavigationbar.dart';
import 'package:car_agency/drawer.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        drawer: drawer(),
        body: DefaultTabController(length: 5, child: Bottomnavigationbar()));
  }
}
