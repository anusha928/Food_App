import 'package:flutter/material.dart';

import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/app_icons.dart';
import 'package:food_app/widgets/bigtexts.dart';
import 'package:food_app/widgets/ratingbox.dart';

import '../../widgets/expandable_text.dart';
import '../auth/signin/signin_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            height: Dimension.popularfoodheight,
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/image/food0.jpg"),
                    fit: BoxFit.cover)),
          ),
        ),
        Positioned(
            top: Dimension.height48,
            left: Dimension.height17,
            right: Dimension.height17,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            )),
        Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            top: Dimension.popularfoodheight - Dimension.height18,
            child: Container(
                padding: EdgeInsets.all(Dimension.height18),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimension.height26),
                        topRight: Radius.circular(Dimension.height26))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBox(
                      text: "Nutricious half roasted chicken",
                    ),
                    SizedBox(
                      height: Dimension.height28,
                    ),
                    BigTexts(text: "Introduction"),
                    SizedBox(
                      height: Dimension.height14,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableText(
                            text:
                                "Generating random paragraphs can be an excellent way for writers to get their creative flow going at the beginning of the day. The writer has no idea what topic the random paragraph will be about when it appears. This forces the writer to use creativity to complete one of three common writing challenges. The writer can use the paragraph as the first one of a short story and build upon it. A second option is to use the random paragraph somewhere in a short story they create. "),
                      ),
                    )
                  ],
                )))
      ]),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: Dimension.height20),
        height: 80,
        decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.circular(Dimension.height22)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(Dimension.height10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimension.height18)),
              child: Row(
                children: [
                  Icon(Icons.remove),
                  SizedBox(
                    width: Dimension.height10,
                  ),
                  BigTexts(
                    text: "0",
                    size: Dimension.height20,
                  ),
                  SizedBox(
                    width: Dimension.height10,
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   Navigator.of(context).push(
              //       MaterialPageRoute(builder: (context) => SignInWidget()));
              // },
              child: Container(
                padding: EdgeInsets.all(Dimension.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimension.height18),
                    color: AppColors.mainColor),
                child: BigTexts(
                  text: "Add to cart",
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
