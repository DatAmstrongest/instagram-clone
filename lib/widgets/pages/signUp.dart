import 'package:flutter/material.dart';

import 'package:instagram_clone/styles/appColors.dart';
import 'package:instagram_clone/widgets/widget/inputField.dart';
import 'package:instagram_clone/widgets/widget/linkBottom.dart';

class SignUp extends StatelessWidget {
  SignUp({Key? key}) : super(key: key);
  static const routeName = "/signUp";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
              child: Text(
                "Enter Your Email Address",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.titleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: InputField(hintText: "Email"),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Continue"),
            ),
            Spacer(),
            LinkBottom(
              descriptionText: "Have an account?",
              linkText: "Login",
              linkRoute: "/login",
            ),
          ],
        ),
      ),
    );
  }
}
