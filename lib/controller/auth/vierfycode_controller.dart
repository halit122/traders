// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';

abstract class VierfyController extends GetxController {
  ckeckVierfy();
  ToGoResetPassword();
}

class VierfyControllerImp extends VierfyController {
  late String verificationCode ;
  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  ckeckVierfy() {}

  @override
  ToGoResetPassword() {
    Get.offNamed(RoutesConst.reseyPassword);
  }
}
