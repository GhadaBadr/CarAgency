import 'package:car_agency/app/modules/Dealerships/views/dealerships_view.dart';
import 'package:car_agency/app/modules/Insurance/views/insurance_view.dart';
import 'package:car_agency/app/modules/Pricing/views/pricing_view.dart';
import 'package:car_agency/app/modules/Services/views/services_view.dart';
import 'package:car_agency/app/modules/Store/views/store_view.dart';
import 'package:car_agency/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../../../../local.dart';

class Bottomnavigationbar extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double yourWidth = (width / 5);
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          DealershipsView(),
          ServicesView(),
          StoreView(),
          PricingView(),
          InsuranceView(),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 3),
        child: TabBar(
          tabs: [
            Container(
              constraints: BoxConstraints(
                  minWidth: (LocalizationService.langs.last == 'English')
                      ? yourWidth
                      : yourWidth - 3),
              child: Tab(
                icon: SvgPicture.asset('lib/Assets/icon/Agencies.svg',
                    width: 35,
                    height: 28,
                    color: Theme.of(context).primaryColor),
                text: 'Dealerships'.tr,
              ),
            ),
            Container(
              constraints: BoxConstraints(
                  minWidth: (LocalizationService.langs.last == 'English')
                      ? yourWidth
                      : yourWidth - 3),
              child: Tab(
                icon: SvgPicture.asset('lib/Assets/icon/services.svg',
                    width: 35,
                    height: 28,
                    color: Theme.of(context).primaryColor),
                text: 'Services'.tr,
              ),
            ),
            Container(
              constraints: BoxConstraints(
                  minWidth: (LocalizationService.langs.last == 'English')
                      ? yourWidth
                      : yourWidth - 3),
              child: Tab(
                icon: Icon(
                  Icons.storefront_outlined,
                  size: 28,
                ),
                text: 'Store'.tr,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => PricingView());
              },
              child: Container(
                constraints: BoxConstraints(
                    minWidth: (LocalizationService.langs.last == 'English')
                        ? yourWidth
                        : yourWidth - 3),
                child: Tab(
                  icon: SvgPicture.asset('lib/Assets/icon/Valuation.svg',
                      width: 35,
                      height: 28,
                      color: Theme.of(context).primaryColor),
                  text: 'Pricing'.tr,
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                  minWidth: (LocalizationService.langs.last == 'English')
                      ? yourWidth
                      : yourWidth - 3),
              child: Tab(
                icon: SvgPicture.asset('lib/Assets/icon/Insurance.svg',
                    width: 35,
                    height: 28,
                    color: Theme.of(context).primaryColor),
                text: 'Insurance'.tr,
              ),
            ),
          ],
          labelPadding: (LocalizationService.langs.last == 'English')
              ? EdgeInsets.symmetric(horizontal: 2.5)
              : EdgeInsets.symmetric(horizontal: 0),
          padding: EdgeInsets.symmetric(horizontal: 8),
          labelStyle: TextStyle(
            fontSize: Theme.of(context).textTheme.headline5!.fontSize,
            fontFamily: (LocalizationService.langs.last == 'English')
                ? 'OpenSans-Regular'
                : 'Tajawal-Regular',
          ),
          labelColor: Theme.of(context).primaryColor,
          isScrollable: true,
          unselectedLabelColor: Theme.of(context).primaryColor,
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Theme.of(context).primaryColor,
          indicatorWeight: 4,
        ),
      ),
    );
  }
}
