import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

exitapp(BuildContext context) {
  return Get.defaultDialog(
      titleStyle: const TextStyle(color: Color.fromARGB(255, 144, 0, 255)),
      title: "exit1".tr,
      content: Text("exit2".tr,
          style: const TextStyle(color: Color.fromARGB(255, 194, 140, 235))),
      actions: [
        TextButton(
          onPressed: () {
            exit(0);
          },
          child: Text("exit3".tr,
              style:
                  const TextStyle(color: Color.fromARGB(255, 211, 166, 245))),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text(
            "exit4".tr,
            style: const TextStyle(color: Color.fromARGB(255, 211, 166, 245)),
          ),
        ),
      ]);
}
