import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/controller/auth/forgetpassword_controller.dart.dart';
import 'package:traders/core/function/valdit.dart';
import 'package:traders/view/widgets/auth_widgets/appbar.dart';
import 'package:traders/view/widgets/auth_widgets/body_auth.dart';
import 'package:traders/view/widgets/auth_widgets/text_form_field.dart';
import 'package:traders/view/widgets/auth_widgets/title_auth.dart';

import '../../widgets/languages/cuonsButten.dart';

class ForGetpassword extends StatelessWidget {
  const ForGetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForGetControllerImp controller = Get.put(ForGetControllerImp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appbarauth("For get password"),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Form(
            key: controller.formkey,
            child: ListView(
              children: [
                const SizedBox(height: 38),
                const TitleAuth(title: "Check the code"),
                const SizedBox(height: 38),
                const BodyAuth(
                  bodytext:
                      "est natus enim nihil est dolore omnis voluptatem numquam",
                ),
                const SizedBox(height: 38),

                AuthTextForm(
                  ispassword: false,
                  isEmail: true,
                  validator: (value) {
                    return validitTextformfaild(max: 100 ,min: 10 ,tyep: "email"  ,value: value  );
                  }, 
                  editingController: controller.email,
                  habedText: "Email",
                  hintText1: "Enter your email",
                  suffixIcon: const Icon(Icons.email_outlined),
                ),

                LanguagesButten(
                  textButton: 'Continue',
                  onPressed: () {
                    controller.checkformkey();
                  },
                ),
                // TextAuthTextButton(
                //   onPressed: () {
                //     controller.goToSignIn();
                //   },
                //   textbutton: "Sign in",
                //   texttitle: "if you have an account ? ",
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
