// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';

abstract class ResetPassword extends GetxController {
  checkpassword();
  ToGoLogin();
  showpassword();
  showRepassword();
}

class ResetPasswordImp extends ResetPassword {
  late TextEditingController password;
  late TextEditingController repassword;
  bool isShowPassword = false;
  bool isShowRepassword = false;

  GlobalKey<FormState> formkey = GlobalKey();

  checkformkey() {
    if (formkey.currentState!.validate()) {
      Get.offNamed(RoutesConst.successReset);
      Get.delete<ResetPasswordImp>();
    }
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();

    super.dispose();
  }

  @override
  checkpassword() {}

  @override
  ToGoLogin() {
    Get.offNamed(RoutesConst.successReset);
  }

  @override
  showpassword() {
    isShowPassword = isShowPassword == false ? true : false;
  }

  @override
  showRepassword() {
    isShowRepassword = isShowRepassword == false ? true : false;
   
  }
}
