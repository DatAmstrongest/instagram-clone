import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/pages/login.dart';
import 'package:instagram_clone/widgets/pages/signUp.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Login.routeName,
      routes: {
        Login.routeName: (context) => Login(),
        SignUp.routeName: (context) => SignUp(),
      },
    ),
  );
}
