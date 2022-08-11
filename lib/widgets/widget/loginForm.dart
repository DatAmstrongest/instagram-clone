import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/styles/appColors.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              fillColor: Colors.grey.shade900,
              filled: true,
              hintText: "Username or email",
              hintStyle: TextStyle(
                color: AppColors.inputColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            style: TextStyle(
              color: Colors.white,
            ),
            keyboardType: TextInputType.visiblePassword,
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
                border: InputBorder.none,
                fillColor: Colors.grey.shade900,
                filled: true,
                hintText: "Password",
                hintStyle: TextStyle(
                  color: AppColors.inputColor,
                ),
                suffixIcon: IconButton(
                  color: Colors.white,
                  splashColor: Colors.transparent,
                  icon: Icon(_passwordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )),
          ),
        ],
      ),
    );
  }
}
