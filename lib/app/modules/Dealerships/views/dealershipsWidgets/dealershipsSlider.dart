// ignore_for_file: file_names

import 'package:car_agency/app/modules/Dealerships/controllers/dealerships_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class Dealershipsslider extends GetView<DealershipsController> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ImageSlideshow(
        /// Width of the [ImageSlideshow].
        width: double.infinity,

        /// Height of the [ImageSlideshow].
        height: 240,

        /// The page to show when first creating the [ImageSlideshow].
        initialPage: 0,

        /// The color to paint the indicator.
        indicatorColor: Colors.white,

        /// The color to paint behind th indicator.
        indicatorBackgroundColor: Colors.grey,

        /// The widgets to display in the [ImageSlideshow].
        /// Add the sample image file into the images folder
        children: [
          Image.network(
            'https://i.ibb.co/WcjhfgM/001.png',
            fit: BoxFit.cover,
          ),
        ],

        /// Called whenever the page in the center of the viewport changes.
        onPageChanged: (value) {},

        /// Auto scroll interval.
        /// Do not auto scroll with null or 0.
        autoPlayInterval: 3000,

        /// Loops back to first slide.
        isLoop: true,
      ),
    ]);
  }
}
