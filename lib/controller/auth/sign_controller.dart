import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';

abstract class SginUpController extends GetxController {
  sginUp();
  goToSignIn();
  showPassword();
}

class SginUpControllerImp extends SginUpController {
  late TextEditingController uesrname;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phont;
  GlobalKey<FormState> formkey = GlobalKey();
  bool isShowpassword = true;
  checkformkey() {
    if (formkey.currentState!.validate()) {
      Get.toNamed(RoutesConst.VeifyCode);
      Get.delete<SginUpControllerImp>();
    }
  }

  @override
  goToSignIn() {
    Get.offNamed(RoutesConst.login);
  }

  @override
  void onInit() {
    uesrname = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    phont = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    uesrname.dispose();
    email.dispose();
    password.dispose();
    phont.dispose();

    super.dispose();
  }

  @override
  sginUp() {
    Get.offNamed(RoutesConst.VeifyCodeSginuupEmail);
  }

  @override
  showPassword() {
    isShowpassword = isShowpassword == false ? true : false;
  }
}
