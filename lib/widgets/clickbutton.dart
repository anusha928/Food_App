import 'package:flutter/material.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/bigtexts.dart';

import '../utils/colors.dart';

class ClickButton extends StatelessWidget {
  final BigTexts text;
  final void Function() ontap;

  const ClickButton({super.key, required this.text, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          width: Dimension.screenwidth / 2,
          height: Dimension.screenheight / 15,

          // padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(Dimension.height28),
          ),
          child: Center(child: text)),
    );
  }
}
