import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/res/components/custom_textfield.dart';
import 'package:legalease/res/components/custum_button.dart';
//import 'package:legalease/res/components/custom_textfield.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(4),
        child: Container(
          height: 800,
          child: Column(
            children: [
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                // Image.asset(AppAssets.icsignup),
                10.heightBox,
                AppStyles.bold(title: Appstrings.signup, size: AppSizes.size18),
                AppStyles.bold(
                    title: Appstrings.signupNow, size: AppSizes.size16),

                // Appstrings.welcomeBack.text.make(),
                // Appstrings.weAreExcited.text.make(),
              ]),
              10.heightBox,
              Expanded(
                  child: Form(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTextField(hint: Appstrings.fullname),
                    10.heightBox,
                    CustomTextField(hint: Appstrings.email),
                    10.heightBox,

                    CustomTextField(hint: Appstrings.password),
                    20.heightBox,
                    CustomTextField(hint: Appstrings.confirmPassword),
                    10.heightBox,
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Appstrings.forgetPassword.text.make(),
                    // ),
                    20.heightBox,
                    CustomButton(
                      buttonText: Appstrings.signup,
                      onTap: () {},
                    ),
                    20.heightBox,
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Appstrings.alreadyHaveAccount.text.make(),
                    //     10.widthBox,
                    //     Appstrings.signup.text.make(),
                    //   ],
                    // )
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }

  // void signUp() async {
  //   try {
  //     // Get user input from text fields
  //     String fullName = Appstrings.fullname;
  //     String email = Appstrings.email;
  //     String password = Appstrings.password;

  //     // Create user in Firebase Authentication
  //     UserCredential userCredential =
  //         await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: email,
  //       password: password,
  //     );

  //     // Save additional user data to Firestore
  //     saveUserDataToFirestore(userCredential.user!.uid, fullName, email);

  //     // Navigate to the home page or perform other actions
  //   } catch (e) {
  //     print('Error during sign-up: $e');
  //     // Handle sign-up errors
  //   }
  // }

  // void saveUserDataToFirestore(String userId, String fullName, String email) {
  //   FirebaseFirestore.instance.collection('users').doc(userId).set({
  //     'fullName': fullName,
  //     'email': email,
  //     // Add other fields as needed
  //   });
  // }
}
