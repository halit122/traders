import 'package:get/get.dart';
import 'package:traders/core/class/crud.dart';

class InitiBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(Crud());
  }
}
