import 'package:flutter/material.dart';
import 'package:instagram_clone/styles/appColors.dart';

class InputField extends StatelessWidget {
  var _controller = TextEditingController();
  final hintText;
  InputField({this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        fillColor: AppColors.fieldBackgroundColor,
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.inputColor,
        ),
        suffixIcon: IconButton(
          splashRadius: 0.1,
          onPressed: _controller.clear,
          icon: CircleAvatar(
            backgroundColor: AppColors.clearIconColor,
            radius: 7,
            child: Icon(
              color: AppColors.fieldBackgroundColor,
              size: 10,
              Icons.clear_rounded,
            ),
          ),
        ),
      ),
    );
  }
}
