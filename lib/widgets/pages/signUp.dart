import 'package:flutter/material.dart';
import 'package:instagram_clone/styles/appColors.dart';
import 'package:instagram_clone/widgets/widget/inputField.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);
  static const routeName = "/signUp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
      ),
      body: Column(
        children: [
          Text("Enter Your Email Address"),
          Form(
            child: InputField(hintText: "Email"),
          )
        ],
      ),
    );
  }
}
