import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/themecheck.dart';
import '../services/services.dart';

class MyLoncg extends GetxController {
  Locale? language;
  MyServices services = Get.find();

  ThemeData themeData = ThemeCheck.themeEngilsh;

  changlocale(String loc) {
    Locale locc = Locale(loc);
    services.preferences.setString("long", loc);
    loc == "ar"
        ? themeData = ThemeCheck.themeArabic
        : themeData = ThemeCheck.themeEngilsh;
    Get.updateLocale(locc);
  }

  @override
  void onInit() {
    String? prs = services.preferences.getString("long");
    if (prs == "ar") {
      language = const Locale("ar");
      themeData = ThemeCheck.themeArabic;
    } else if (prs == "en ") {
      language = const Locale("en");
      themeData = ThemeCheck.themeEngilsh;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      themeData = ThemeCheck.themeEngilsh;
    }
    super.onInit();
  }
}
