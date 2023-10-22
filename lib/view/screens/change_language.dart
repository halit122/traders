import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/imagesassnk.dart';
import 'package:traders/core/constant/routes_const.dart';
import 'package:traders/core/localization/changelang.dart';

import '../widgets/languages/cuonsButten.dart';

class Lnaguages extends GetView<MyLoncg> {
  const Lnaguages({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.all(8.0),
                height: size.height * 0.6,
                child: Image.asset(
                  AppImageslink.languagesImage,
                )),
            Text(
              "1.1".tr,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            LanguagesButten(
              textButton: "1.2".tr,
              onPressed: () {
                controller.changlocale("ar");
                Get.offNamed(RoutesConst.onborading);
              },
            ),
            LanguagesButten(
              textButton: "1.3".tr,
              onPressed: () {
                controller.changlocale("en");
                Get.offNamed(RoutesConst.onborading);
              },
            ),
          ],
        ),
      ),
    );
  }
}
