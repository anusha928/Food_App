import 'package:flutter/material.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_icons.dart';
import 'package:food_app/widgets/bigtexts.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigTexts bigTexts;
  AccountWidget({super.key, required this.appIcon, required this.bigTexts});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimension.height14),
      margin: EdgeInsets.symmetric(horizontal: Dimension.height18),
      child: Row(
        children: [
          appIcon,
          SizedBox(
            width: Dimension.height14,
          ),
          bigTexts
        ],
      ),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            blurRadius: 1,
            offset: Offset(0, 2),
            color: Colors.grey.withOpacity(0.2))
      ]),
    );
  }
}
