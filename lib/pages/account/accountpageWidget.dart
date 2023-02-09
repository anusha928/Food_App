import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/auth/signin/signinScreen.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/accountwidget.dart';
import 'package:food_app/widgets/app_icons.dart';
import 'package:food_app/widgets/bigtexts.dart';
import 'package:food_app/widgets/clickbutton.dart';
import 'package:page_transition/page_transition.dart';

import '../../common/sharedpref.dart';

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Dimension.height14 * 2,
              ),
              AppIcon(
                icon: Icons.person,
                backgroundcolor: AppColors.mainColor,
                iconcolor: Colors.white,
                iconsize: Dimension.height26 * 2,
                size: Dimension.height20 * 5,
              ),
              SizedBox(
                height: Dimension.height22,
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
                height: Dimension.height14,
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
                height: Dimension.height14,
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
                height: Dimension.height14,
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: AccountWidget(
                    appIcon: AppIcon(
                      icon: Icons.location_on,
                      backgroundcolor: AppColors.yellowColor,
                      iconcolor: Colors.white,
                      iconsize: Dimension.height22,
                      size: Dimension.height14 * 3,
                    ),
                    bigTexts: BigTexts(text: "Address")),
              ),
              SizedBox(
                height: Dimension.height14,
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
              SizedBox(
                height: Dimension.height14 * 2,
              ),
              ClickButton(
                  text: BigTexts(
                    text: "Logout",
                    color: Colors.white,
                  ),
                  ontap: () {
                    FirebaseAuth.instance.signOut();
                    SharedPref.removeUsertoken();
                    Navigator.of(context).pushAndRemoveUntil(
                        PageTransition(
                            child: SigninScreen(),
                            type: PageTransitionType.fade),
                        (route) => false);
                  }),
              SizedBox(
                height: Dimension.height14 * 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
