import 'package:get/get.dart';
import 'package:traders/core/class/stateRequest.dart';
import 'package:traders/core/function/handlin_conterller.dart';
import 'package:traders/data/datasource/remote/test_data.dart';

class TestController extends GetxController {
  TestData testData = TestData(Get.find());

  List data = [];

  late StatrRequest statrRequest;

  getDtat() async {
    statrRequest = StatrRequest.loading;
    var respons = await testData.getData();
    statrRequest = handlinData(respons);
    if (statrRequest == StatrRequest.success) {
      if (respons["status"] == "failure") {
        respons["status"] = "No data "; 
      }else{
      data.addAll(respons['data']);
      }
    }
    update();
  }

  @override
  void onInit() {
    getDtat();
    super.onInit();
  }
}
