import 'package:editor/app/core/enums/filter_feature.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void callFilterFeature(FilterFeature filterFeature) {
  switch (filterFeature) {
    case FilterFeature.vintage:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('vintage')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case FilterFeature.cloudy:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('cloudy')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
    case FilterFeature.sunny:
      {
        Get.bottomSheet(
          const SizedBox(
            child: Center(child: Text('sunny')),
          ),
          backgroundColor: Colors.white,
        );
      }
      break;
  }
}
