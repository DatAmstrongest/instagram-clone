import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:instagram_clone/styles/appColors.dart';

class LinkBottom extends StatelessWidget {
  final descriptionText;
  final linkText;
  final linkRoute;
  LinkBottom({
    this.descriptionText,
    this.linkText,
    this.linkRoute,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(color: AppColors.inputColor),
        text: descriptionText,
        children: <TextSpan>[
          TextSpan(
            text: "  $linkText",
            style: TextStyle(color: AppColors.linkColor),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, linkRoute);
              },
          ),
        ],
      ),
    );
  }
}
