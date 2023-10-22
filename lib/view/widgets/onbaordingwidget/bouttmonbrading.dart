import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:traders/controller/provider/myprovider.dart';

class BouttnOnBrading extends StatelessWidget {
  const BouttnOnBrading({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<ControllerProvider>(context, listen: false);
    return Expanded(
        flex: 1,
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ElevatedButton(
              style: const ButtonStyle(
                side: MaterialStatePropertyAll(BorderSide(
                  width: 2,
                  strokeAlign: 2,
                )),
                minimumSize: MaterialStatePropertyAll(Size.fromWidth(200)),
                backgroundColor: MaterialStatePropertyAll(
                  Color.fromARGB(255, 199, 163, 255),
                ),
              ),
              onPressed: () {
                counter.next(context);
              },
              child: Text(
                "2.3".tr,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            )));
  }
}
