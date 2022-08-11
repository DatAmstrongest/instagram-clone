import 'package:flutter/material.dart';

import 'package:instagram_clone/styles/appColors.dart';
import 'package:instagram_clone/widgets/widget/inputField.dart';
import 'package:instagram_clone/widgets/widget/passwordField.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          InputField(
            hintText: "Username or email",
          ),
          SizedBox(
            height: 10,
          ),
          PasswordField(),
        ],
      ),
    );
  }
}
