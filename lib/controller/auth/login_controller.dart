// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';
import 'package:flutter/material.dart';

abstract class LoginController extends GetxController {
  login();
  ToGoSginUp();
  ToGoForGet();
  showPassword();
}

class LoginControllerImp extends LoginController {
  late TextEditingController email;
  late TextEditingController password;
  bool isShowpasswors = false ;

  GlobalKey<FormState> formkey = GlobalKey();

  checkformkey() {
    if (formkey.currentState!.validate()) {
      Get.offNamed(RoutesConst.successSginUP);
      Get.delete<LoginControllerImp>();
    }
  }

  @override
  ToGoSginUp() {
    Get.offNamed(RoutesConst.sginUp);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  login() {}

  @override
  ToGoForGet() {
    Get.offNamed(RoutesConst.forgetpassword);
  }

  @override
  showPassword() {
    isShowpasswors = isShowpasswors ==  true ? false : true ;
  }
}
