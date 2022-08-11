import 'package:flutter/material.dart';
import 'package:instagram_clone/styles/fonts.dart';
import 'package:instagram_clone/styles/appColors.dart';
import 'package:instagram_clone/widgets/widget/loginForm.dart';
import 'package:instagram_clone/widgets/widget/linkBottom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Login extends StatelessWidget {
  static const routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.appBackgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 150),
            child: Text(
              "Instagram",
              style: Fonts.titleFont,
            ),
          ),
          SizedBox(height: 30),
          LoginForm(),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              child: Text("Forgot Password?"),
              onPressed: () {},
            ),
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Divider(
                  thickness: 1,
                  indent: 30,
                  endIndent: 10,
                  color: AppColors.dividerColor,
                ),
              ),
              Text("OR", style: TextStyle(color: Colors.grey.shade300)),
              Expanded(
                child: Divider(
                  thickness: 1,
                  indent: 30,
                  endIndent: 10,
                  color: AppColors.dividerColor,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TextButton.icon(
            icon: Icon(
              FontAwesomeIcons.facebook,
              color: Colors.blue,
              size: 16.0,
            ),
            label: Text(
              "Login with Facebook",
              style: TextStyle(
                color: Color.fromRGBO(71, 149, 236, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 50,
          ),
          Divider(color: AppColors.dividerColor),
          SizedBox(
            height: 15,
          ),
          LinkBottom(
              descriptionText: "Don't have an account?",
              linkText: "Sign up",
              linkRoute: "/signUp")
        ],
      ),
    );
  }
}
