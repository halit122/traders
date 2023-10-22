import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences preferences;

  Future<MyServices> init() async {
    preferences = await SharedPreferences.getInstance();
    return this;
  }
}

initiaServices() async {
  await Get.putAsync(() => MyServices().init());
}
