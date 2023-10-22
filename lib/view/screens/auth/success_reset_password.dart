import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/core/constant/routes_const.dart';
import 'package:traders/view/widgets/languages/cuonsButten.dart';

class SuccessReset extends StatelessWidget {
  const SuccessReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Text(
              "Reset Success",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const Icon(
            Icons.check_circle,
            color: const Color.fromRGBO(195, 194, 254, 1),
            size: 150,
          ),
          const Text(".........."),
          const Text(".........."),
          const Spacer(),
          LanguagesButten(
            textButton: 'Continue',
            onPressed: () {
              Get.offAllNamed(RoutesConst.login);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
