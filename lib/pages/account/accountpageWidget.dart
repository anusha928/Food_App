import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/accountwidget.dart';
import 'package:food_app/widgets/app_icons.dart';
import 'package:food_app/widgets/bigtexts.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: Center(
            child: BigTexts(
          text: "Profile",
          size: Dimension.height22,
          color: Colors.white,
        )),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: Dimension.height66,
            ),
            AppIcon(
              icon: Icons.person,
              backgroundcolor: AppColors.mainColor,
              iconcolor: Colors.white,
              iconsize: Dimension.height26 * 2,
              size: Dimension.height20 * 5,
            ),
            SizedBox(
              height: Dimension.height26,
            ),
            AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.person,
                  backgroundcolor: AppColors.mainColor,
                  iconcolor: Colors.white,
                  iconsize: Dimension.height22,
                  size: Dimension.height14 * 3,
                ),
                bigTexts: BigTexts(text: "Zoro Senpai")),
            SizedBox(
              height: Dimension.height18,
            ),
            AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.phone,
                  backgroundcolor: AppColors.yellowColor,
                  iconcolor: Colors.white,
                  iconsize: Dimension.height22,
                  size: Dimension.height14 * 3,
                ),
                bigTexts: BigTexts(text: "1234567890")),
            SizedBox(
              height: Dimension.height18,
            ),
            AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.email,
                  backgroundcolor: AppColors.yellowColor,
                  iconcolor: Colors.white,
                  iconsize: Dimension.height22,
                  size: Dimension.height14 * 3,
                ),
                bigTexts: BigTexts(text: "Email")),
            SizedBox(
              height: Dimension.height18,
            ),
            AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.location_on,
                  backgroundcolor: AppColors.yellowColor,
                  iconcolor: Colors.white,
                  iconsize: Dimension.height22,
                  size: Dimension.height14 * 3,
                ),
                bigTexts: BigTexts(text: "Address")),
            SizedBox(
              height: Dimension.height18,
            ),
            AccountWidget(
                appIcon: AppIcon(
                  icon: Icons.message,
                  backgroundcolor: Colors.redAccent,
                  iconcolor: Colors.white,
                  iconsize: Dimension.height22,
                  size: Dimension.height14 * 3,
                ),
                bigTexts: BigTexts(text: "Messages")),
          ],
        ),
      ),
    );
  }
}
