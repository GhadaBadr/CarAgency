// ignore_for_file: file_names
import 'package:car_agency/app/modules/NewAgencyItemDetails/controllers/new_agency_item_details_controller.dart';
import 'package:car_agency/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BodytypeDetailsDescriptionTable1
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 262,
      padding: EdgeInsets.only(bottom: 10),
      color: AppTheme.white,
      child: SingleChildScrollView(
        child: Column(
            children: controller.quickMainFacts.map<Widget>((e) {
          return Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(6),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['title'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.all(2),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['des'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}

class BodytypeDetailsDescriptionTable2
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 262,
      padding: EdgeInsets.only(bottom: 10),
      color: AppTheme.white,
      child: SingleChildScrollView(
        child: Column(
            children: controller.interiorDetails.map<Widget>((e) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(6),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['title'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.all(2),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['des'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}

class BodytypeDetailsDescriptionTable3
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 262,
      padding: EdgeInsets.only(bottom: 10),
      color: AppTheme.white,
      child: SingleChildScrollView(
        child: Column(
            children: controller.exteriorDetails.map<Widget>((e) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(6),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['title'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.all(2),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['des'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}

class BodytypeDetailsDescriptionTable4
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 262,
      padding: EdgeInsets.only(bottom: 10),
      color: AppTheme.white,
      child: SingleChildScrollView(
        child: Column(
            children: controller.engineDetails.map<Widget>((e) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(6),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['title'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.all(2),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['des'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}

class BodytypeDetailsDescriptionTable5
    extends GetView<NewAgencyItemDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 262,
      padding: EdgeInsets.only(bottom: 10),
      color: AppTheme.white,
      child: SingleChildScrollView(
        child: Column(
            children: controller.fuelEfficiens.map<Widget>((e) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(6),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['title'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(6),
                      margin: EdgeInsets.all(2),
                      color: Theme.of(context).primaryColor,
                      child: Center(
                          child: Text(
                        e['des'],
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList()),
      ),
    );
  }
}
