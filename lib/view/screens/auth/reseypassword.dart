import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traders/core/function/valdit.dart';
import 'package:traders/view/widgets/auth_widgets/appbar.dart';
import 'package:traders/view/widgets/auth_widgets/body_auth.dart';
import 'package:traders/view/widgets/auth_widgets/text_form_field.dart';
import 'package:traders/view/widgets/auth_widgets/title_auth.dart';

import '../../../controller/auth/reset_password_controller.dart';
import '../../widgets/languages/cuonsButten.dart';

class ReseyPassword extends StatefulWidget {
  const ReseyPassword({super.key});

  @override
  State<ReseyPassword> createState() => _ReseyPasswordState();
}

class _ReseyPasswordState extends State<ReseyPassword> {
  @override
  Widget build(BuildContext context) {
    ResetPasswordImp controller = Get.put(ResetPasswordImp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appbarauth("Resey password"),
        body: Container(
          margin: const EdgeInsets.all(15),
          child: Form(
            key: controller.formkey,
            child: ListView(
              children: [
                const SizedBox(height: 38),
                const TitleAuth(title: "enter a new password"),
                const SizedBox(height: 38),
                const BodyAuth(
                  bodytext: "passes enter a new password",
                ),
                const SizedBox(height: 38),

                AuthTextForm(
                  ispassword: controller.isShowPassword,
                  validator: (value) {
                    return validitTextformfaild(
                        max: 30, min: 5, tyep: "password", value: value);
                  },
                  editingController: controller.password,
                  habedText: "password",
                  hintText1: "Enter your password",
                  suffixIcon: IconButton(
                    icon: Icon(controller.isShowPassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () {
                      controller.showpassword();
                      setState(() {});
                    },
                  ),
                  showCursor: false,
                ),
                AuthTextForm(
                  ispassword: controller.isShowRepassword,
                  validator: (value) {
                    return validitTextformfaild(
                        max: 30, min: 5, tyep: "password", value: value);
                  },
                  editingController: controller.repassword,
                  habedText: "erpassword",
                  hintText1: "Enter your erpassword",
                  suffixIcon: IconButton(
                    icon: Icon(controller.isShowRepassword
                        ? Icons.visibility_off
                        : Icons.visibility),
                    onPressed: () { 
                      controller.showRepassword();
                      setState(() {});
                    },
                  ),
                  showCursor: false,
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
