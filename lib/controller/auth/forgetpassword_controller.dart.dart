// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';

abstract class ForGetController extends GetxController {
  ForGet();
  ToGoVierfyCode();
}

class ForGetControllerImp extends ForGetController {
  late TextEditingController email;
  GlobalKey<FormState> formkey = GlobalKey();

  checkformkey() {
    if (formkey.currentState!.validate()) {
      Get.offNamed(RoutesConst.VeifyCode);
      Get.delete<ForGetControllerImp>();
    }
    return null;
  }

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  @override
  ForGet() {}

  @override
  ToGoVierfyCode() {
    Get.offNamed(RoutesConst.VeifyCode);
  }
}
