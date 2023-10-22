import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:traders/controller/provider/myprovider.dart';
import 'package:traders/core/services/services.dart';
import 'package:traders/routes.dart';
import 'package:traders/view/test/test_view.dart';

import 'binding/binding.dart';
import 'core/localization/changelang.dart';
import 'core/localization/transLocalion.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initiaServices();
  runApp(
    ChangeNotifierProvider(
      create: (context) => ControllerProvider(),
      child: MyApp(),
    ),
  );
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  MyServices? services;
  @override
  Widget build(BuildContext context) {
    MyLoncg controller = Get.put(MyLoncg());
    Get.put(MyLoncg());

    return GetMaterialApp(
      locale: controller.language,
      translations: MyTranslations(),
      theme: controller.themeData,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      initialBinding: InitiBinding(),
      getPages: routes,
    );
  }
}
