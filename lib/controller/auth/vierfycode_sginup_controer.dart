// ignore_for_file: non_constant_identifier_names

import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';

abstract class VierfyEmailController extends GetxController {
  ckeckVierfySginup();
  ckeckVierfySginupEmail();
}

class VierfyEmailControllerImp extends VierfyEmailController {
  late String verificationCode ;
 

  @override
  ckeckVierfySginup() {}

  @override
  ckeckVierfySginupEmail() {
    Get.offNamed(RoutesConst.successSginUP);
  }
}
