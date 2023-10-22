import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';
import 'package:traders/core/services/services.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;

  MyServices services = Get.find();

  @override
  RouteSettings? redirect(String? route) {
    if (services.preferences.getString("onbaording") == "1") {
      return const RouteSettings(name: RoutesConst.login);
    }
    return null;
  }
}
