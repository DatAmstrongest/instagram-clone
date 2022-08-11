import 'package:flutter/material.dart';

import 'package:instagram_clone/styles/appColors.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({Key? key}) : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  var _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      keyboardType: TextInputType.visiblePassword,
      obscureText: !_passwordVisible,
      decoration: InputDecoration(
          border: InputBorder.none,
          fillColor: AppColors.fieldBackgroundColor,
          filled: true,
          hintText: "Password",
          hintStyle: TextStyle(
            color: AppColors.inputColor,
          ),
          suffixIcon: IconButton(
            color: Colors.white,
            splashColor: Colors.transparent,
            icon: Icon(
                _passwordVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          )),
    );
  }
}
