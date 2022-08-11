import 'package:flutter/material.dart';
import 'package:instagram_clone/widgets/login.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Login.routeName,
      routes: {
        Login.routeName: (context) => Login(),
      },
    ),
  );
}
