import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/res/components/custom_textfield.dart';
import 'package:legalease/res/components/custum_button.dart';
import 'package:legalease/views/home_view.dart';
import 'package:legalease/views/signup_view.dart';
//import 'package:legalease/res/components/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(AppAssets.iclog),
              10.heightBox,
              AppStyles.bold(
                  title: Appstrings.welcomeBack, size: AppSizes.size18),
              AppStyles.bold(
                  title: Appstrings.weAreExcited, size: AppSizes.size16),

              // Appstrings.welcomeBack.text.make(),
              // Appstrings.weAreExcited.text.make(),
            ]),
            30.heightBox,
            Expanded(
                child: Form(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextField(hint: Appstrings.email),
                  10.heightBox,
                  CustomTextField(hint: Appstrings.password),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerRight,
                    child: Appstrings.forgetPassword.text.make(),
                  ),
                  20.heightBox,
                  CustomButton(
                    buttonText: Appstrings.login, 
                    onTap: () {
                      Get.to(() => const HomeView());
                    },
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Appstrings.alreadyHaveAccount.text.make(),
                      10.widthBox,
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const SignupView());
                        },
                        child: Appstrings.signup.text.make(),
                      )
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
