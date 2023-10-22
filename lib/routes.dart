import 'package:dartz/dartz_streaming.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';
import 'package:traders/core/middleware/mymiddleware.dart';
import 'package:traders/test.dart';
import 'package:traders/view/screens/auth/login.dart';
import 'package:traders/view/screens/auth/sginup.dart';
import 'package:traders/view/screens/auth/success_reset_password.dart';
import 'package:traders/view/screens/auth/success_sginup.dart';
import 'package:traders/view/screens/auth/vierfycod_sginup.dart';
import 'package:traders/view/screens/change_language.dart';
import 'package:traders/view/screens/onbaording.dart';
import 'package:traders/view/test/test_view.dart';

import 'view/screens/auth/forgetpassword.dart';
import 'view/screens/auth/reseypassword.dart';
import 'view/screens/auth/vierfycode.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: '/', page: () => const Lnaguages() , middlewares: [
  //   MyMiddleware(),
  // ] ),
  GetPage(name: "/", page:() =>  TestView()),

  GetPage(name: RoutesConst.login, page:() => const  Login()),
  GetPage(name: RoutesConst.onborading, page: () => const OnBaordgin()),
  GetPage(name: RoutesConst.sginUp, page: () => const SginUp()),
  GetPage(name: RoutesConst.forgetpassword, page: () => const ForGetpassword()),
  GetPage(name: RoutesConst.VeifyCode, page: () => const Vierfycode()),
  GetPage(name: RoutesConst.successReset, page: () => const SuccessReset()),
  GetPage(name: RoutesConst.reseyPassword, page: () => const ReseyPassword()),
  GetPage(name: RoutesConst.successSginUP, page: () => const SuccessSginUp()),
  GetPage(
      name: RoutesConst.VeifyCodeSginuupEmail,
      page: () => const VierfycodeSginUp())
];
