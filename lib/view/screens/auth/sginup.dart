import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/controller/auth/sign_controller.dart';
import 'package:traders/core/function/valdit.dart';
import 'package:traders/view/widgets/auth_widgets/appbar.dart';
import 'package:traders/view/widgets/auth_widgets/body_auth.dart';
import 'package:traders/view/widgets/auth_widgets/text_form_field.dart';
import 'package:traders/view/widgets/auth_widgets/text_textbutton.dart';
import 'package:traders/view/widgets/auth_widgets/title_auth.dart';

import '../../widgets/languages/cuonsButten.dart';

class SginUp extends StatefulWidget {
  const SginUp({super.key});

  @override
  State<SginUp> createState() => _SginUpState();
}

class _SginUpState extends State<SginUp> {
  @override
  Widget build(BuildContext context) {
    SginUpControllerImp controller = Get.put(SginUpControllerImp());

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appbarauth("5.0".tr),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Form(
            key: controller.formkey,
            child: ListView(
              children: [
                const SizedBox(height: 38),
                TitleAuth(title: "4.2".tr),
                const SizedBox(height: 38),
                BodyAuth(
                  bodytext: "4.3".tr,
                ),
                const SizedBox(height: 38),
                AuthTextForm(
                  ispassword: false,
                  validator: (value) {
                    return validitTextformfaild(
                        max: 30, min: 3, tyep: "username", value: value);
                  },
                  editingController: controller.uesrname,
                  habedText: "5.1".tr,
                  hintText1: "5.2".tr,
                  suffixIcon: const Icon(Icons.person),
                ),
                AuthTextForm(
                  ispassword: false,
                  isEmail: true,
                  validator: (value) {
                    return validitTextformfaild(
                        max: 50, min: 10, tyep: "email", value: value);
                  },
                  editingController: controller.email,
                  habedText: "4.4".tr,
                  hintText1: "4.5".tr,
                  suffixIcon: const Icon(Icons.email_outlined),
                ),
                AuthTextForm(
                  ispassword: false,
                  isNUmber: true,
                  validator: (value) {
                    return validitTextformfaild(
                        max: 18, min: 8, tyep: "phone", value: value);
                  },
                  editingController: controller.phont,
                  habedText: "5.3".tr,
                  hintText1: "5.4".tr,
                  suffixIcon: const Icon(Icons.phone),
                ),
                AuthTextForm(
                  ispassword: controller.isShowpassword,
                  validator: (value) {
                    return validitTextformfaild(
                        max: 30, min: 5, tyep: "password", value: value);
                  },
                  editingController: controller.password,
                  habedText: "5.1.1".tr,
                  hintText1:  "5.1.2".tr,
                  suffixIcon:  IconButton(
                    icon: Icon(controller.isShowpassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () { 
                      controller.showPassword();
                      setState(() {});
                    },
                  ),
                ),
                LanguagesButten(
                  textButton: "4.9".tr,
                  onPressed: () {
                    controller.checkformkey();
                  },
                ),
                TextAuthTextButton(
                  onPressed: () {
                    controller.goToSignIn();
                  },
                  textbutton: "4.1".tr,
                  texttitle: "5.5".tr,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
