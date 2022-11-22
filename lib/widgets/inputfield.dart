import 'package:flutter/material.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/smalltexts.dart';

import '../utils/colors.dart';

class InputField extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String text;
  final Icon? icon;
  final Function()? onSubmit;
  final TextInputAction? textInputAction;
  final String hinttext;
  final bool obscureText;
  final Color? color;
  InputField(
      {this.text = "",
      this.color,
      this.onSubmit,
      this.icon,
      this.textInputAction,
      required this.hinttext,
      this.validator,
      this.obscureText = false,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          SizedBox(
            height: Dimension.height10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimension.height26),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 7,
                      offset: Offset(1, 10),
                      color: Colors.grey.withOpacity(0.2))
                ]),
            child: TextFormField(
              cursorColor: AppColors.titleColor,
              controller: controller,
              validator: validator,
              obscureText: obscureText,
              textInputAction: textInputAction,
              onEditingComplete: () {
                FocusScope.of(context).unfocus();
                {
                  if (onSubmit != null) {
                    onSubmit!();
                  }
                }
                ;
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                  hintText: hinttext,
                  prefixIcon: icon,
                  // focusedBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(Dimension.height28),
                  //   borderSide: BorderSide(width: 1.0, color: Colors.white),
                  // ),
                  hintStyle:
                      TextStyle(color: AppColors.mainblackColor, fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}
