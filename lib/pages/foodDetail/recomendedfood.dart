import 'package:flutter/material.dart';
import 'package:food_app/pages/auth/signin/signin_widget.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/bigtexts.dart';
import 'package:food_app/widgets/expandable_text.dart';
import 'package:food_app/widgets/smalltexts.dart';

import '../../utils/colors.dart';
import '../../widgets/app_icons.dart';

class RecomendedFood extends StatelessWidget {
  const RecomendedFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  size: 28,
                  icon: Icons.arrow_back_ios,
                ),
                AppIcon(size: 28, icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.all(Dimension.height10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimension.height14),
                          topLeft: Radius.circular(Dimension.height14))),
                  child: Center(
                      child: BigTexts(
                    text: "Chicken Leg Piece",
                    size: Dimension.height20,
                  )),
                ),
                preferredSize: Size.fromHeight(20)),
            backgroundColor: Color.fromARGB(255, 235, 171, 60),
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                    padding: EdgeInsets.all(Dimension.height17),
                    child: ExpandableText(
                      text:
                          "Generating random paragraphs can be an excellent way for writers to get their creative flow going at the beginning of the day. The writer has no idea what topic the random paragraph will be about when it appears. This forces the writer to use creativity If you're looking for random paragraphs, you've come to the right place. When a random word or a random sentence isn't quite enough, the next logical step is to find a random paragraph. We created the Random Paragraph Generator with you in mind. The process is quite simple. Choose the number of random paragraphs you'd like to see and click the button. Your chosen number of paragraphs will instantly appear.While it may not be obvious to everyone, there are a number of reasons creating random paragraphs can be useful. A few examples of how some people use this generator are listed in the following paragraphs. to complete one of three common writing challenges. The writer can use the paragraph as the first one of a short story and build upon it. A second option is to use the random paragraph somewhere in a short story they create.It's not only writers who can benefit from this free online tool. If you're a programmer who's working on a project where blocks of text are needed, this tool can be a great way to get that. It's a good way to test yAbove are a few examples of how the random paragraph generator can be beneficial. The best way to see if this random paragraph picker will be useful for your intended purposes is to give it a try. Generate a number of paragraphs to see if they are beneficial to your current projeIf you do find this paragraph tool useful, please do us a favor and let us know how you're using it. It's greatly beneficial for us to know the different ways this tool is being used so we can improve it with updates. This is especially true since there are times when the generators we create get used in completely unanticipated ways from when we initially created them. If you have the time, please send us a quick note on what you'd like to see changed or added to make it better in the future.If you're looking for random paragraphs, you've come to the right place. When a random word or a random sentence isn't quite enough, the next logical step is to find a random paragraph. We created the Random Paragraph Generator with you in mind. The process is quite simple. Choose the number of random paragraphs you'd like to see and click the button. Your chosen number of paragraphs will instantly appear.While it may not be obvious to everyone, there are a number of reasons creating random paragraphs can be useful. A few examples of how some people use this generator are listed in the following paragraphs. ",
                    ))
              ],
            ),
          )
        ],
      ),
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
                child: Icon(
                  Icons.favorite,
                  color: AppColors.mainColor,
                )),
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
