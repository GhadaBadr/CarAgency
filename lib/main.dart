import 'package:car_agency/theme.dart';
// import 'package:device_preview/device_preview.dart';

// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'local.dart';

void main() {
  runApp(
      // DevicePreview(
      // enabled: !kReleaseMode,
      // builder: (context) =>
      GetMaterialApp(
    locale: LocalizationService.locale,
    fallbackLocale: LocalizationService.fallbackLocale,
    translations: LocalizationService(),
    debugShowCheckedModeBanner: false,
    title: "Application",
    initialRoute: AppPages.INITIAL,
    getPages: AppPages.routes,
    theme: myTheme(),
    // ),
  ));
}
