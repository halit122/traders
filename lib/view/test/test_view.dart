import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/controller/test_controller.dart';
import 'package:traders/core/class/stateRequest.dart';

class TestView extends StatelessWidget {
  TestView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController);
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<TestController>(
        init: TestController(),
        builder: (controller) {
          if (controller.statrRequest == StatrRequest.loading) {
            return const Center(
              child: Text("this is loading"),
            );
          } else if (controller.statrRequest == StatrRequest.offlinefailuer) {
            return const  Center(
              child: Text("this is offlinefailuer "),
            );
          } else if (controller.statrRequest == StatrRequest.severfailure) {
            return const  Center(
              child: Text("severfailure"),
            );
          }else if (controller.statrRequest == StatrRequest.failure) {
            return const  Center(
              child: Text("failure"),
            );
          } else {
            return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) => Text("${controller.data}"),
            );
          }
        },
      ),
    );
  }
}
