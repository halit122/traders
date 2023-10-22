import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/controller/auth/login_controller.dart';
import 'package:traders/core/function/exitapp.dart';
import 'package:traders/core/function/valdit.dart';
import 'package:traders/view/widgets/auth_widgets/appbar.dart';
import 'package:traders/view/widgets/auth_widgets/body_auth.dart';
import 'package:traders/view/widgets/auth_widgets/text_form_field.dart';
import 'package:traders/view/widgets/auth_widgets/title_auth.dart';

import '../../widgets/auth_widgets/text_textbutton.dart';
import '../../widgets/languages/cuonsButten.dart';

// ignore: must_be_immutable
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  LoginControllerImp controller = Get.put(LoginControllerImp());

  @override
  Widget build(BuildContext context) {
    LoginControllerImp controller = Get.put(LoginControllerImp());

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appbarauth("4.1".tr),
        body: WillPopScope(
          onWillPop: () {
            return exitapp(context);
          },
          child: Container(
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
                    isEmail: true,
                    validator: (value) {
                      return validitTextformfaild(
                          tyep: "email", value: value, max: 100, min: 10);
                    },
                    editingController: controller.email,
                    habedText: "4.4".tr,
                    hintText1: "4.5".tr,
                    suffixIcon: const Icon(Icons.email_outlined),
                  ),
                 AuthTextForm(
                        ispassword: controller.isShowpasswors ,
                        validator: (value) {
                          return validitTextformfaild(
                              tyep: "pssword ", value: value, max: 100, min: 5);
                        },
                        editingController: controller.password,
                        habedText: "4.6".tr,
                        hintText1: "4.7".tr,
                        suffixIcon: IconButton(
                          icon: Icon(controller.isShowpasswors == true
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            controller.showPassword();
                            setState(() {});
                            // print(controller.isShowpasswors);
                          },
                        ),
                      ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.ToGoForGet();
                        },
                        child: Text(
                          "4.8".tr,
                        ),
                      ),
                    ],
                  ),
                  LanguagesButten(
                    textButton: "4.9".tr,
                    onPressed: () {
                      controller.checkformkey();
                    },
                  ),
                  TextAuthTextButton(
                    onPressed: () {
                      controller.ToGoSginUp();
                    },
                    textbutton: "4.10".tr,
                    texttitle: "4.11".tr,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
