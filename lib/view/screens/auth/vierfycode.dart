import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:traders/view/widgets/auth_widgets/appbar.dart';
import 'package:traders/view/widgets/auth_widgets/body_auth.dart';
import 'package:traders/view/widgets/auth_widgets/title_auth.dart';

import '../../../controller/auth/vierfycode_controller.dart';
import '../../widgets/languages/cuonsButten.dart';

class Vierfycode extends StatelessWidget {
  const Vierfycode({super.key});

  @override
  Widget build(BuildContext context) {
    VierfyControllerImp controller = Get.put(VierfyControllerImp());
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: appbarauth("Vierfy code"),
        body: Container(
          margin: const EdgeInsets.all(15),
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
              OtpTextField(
                numberOfFields: 5,
                borderColor: Color(0xFF512DA8),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  controller.verificationCode = verificationCode;
                  controller.ToGoResetPassword();
                }, // end onSubmit
              ),

              LanguagesButten(
                textButton: 'Continue',
                onPressed: () {},
              ),
              // TextAuthTextButton(
              //  onPressed: () {
              //     controller.goToSignIn();
              //   },
              //   textbutton: "Sign in",
              //   texttitle: "if you have an account ? ",
              // )
            ],
          ),
        ),
      ),
    );
  }
}
