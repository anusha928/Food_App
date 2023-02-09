import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:food_app/data.dart';
import 'package:food_app/pages/foodDetail/popularFoodDetail.dart';
import 'package:food_app/pages/foodDetail/recomendedfood.dart';

import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';
import 'package:food_app/widgets/bigtexts.dart';
import 'package:food_app/widgets/icon_text_widget.dart';
import 'package:food_app/widgets/smalltexts.dart';
import 'package:page_transition/page_transition.dart';

class FoodPageBody extends StatefulWidget {
 
  FoodPageBody({
    super.key,
  });

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  PageController pageController = PageController(viewportFraction: 0.88);
  var _currpagevalue = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currpagevalue = pageController.page!;
        //print("$_currpagevalue");
      });
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    print("screenHeight: $screenheight");
    //getscreenheight

    return Column(
      children: [
        Container(
          // color: Colors.redAccent,
          height: Dimension.container,
          child: PageView.builder(
              controller: pageController,
              itemCount: recomended_images.length,
              itemBuilder: (context, position) {
                
                return buildPageitem(position);
              }),
        ),
        SizedBox(
          height: Dimension.height22,
        ),
        DotsIndicator(
          dotsCount: 5,
          position: _currpagevalue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
            spacing: const EdgeInsets.all(10.0),
          ),
        ),
        SizedBox(
          height: Dimension.height18 * 2,
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: Dimension.height20),
          child: Row(
            children: [
              BigTexts(
                text: "Popular",
              ),
              SizedBox(
                width: Dimension.height10,
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: SmallTexts(
                    text: ".",
                  )),
              SizedBox(
                width: Dimension.height10,
              ),
              Container(
                margin: EdgeInsets.only(top: 4),
                child: SmallTexts(
                  text: "Food paring",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: Dimension.height30,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    child: PopularFoodDetail(), type: PageTransitionType.fade));
              },
              child: Container(
                margin: EdgeInsets.only(
                    left: Dimension.height20,
                    right: Dimension.height20,
                    bottom: Dimension.height10),
                child: Row(
                  children: [
                    Container(
                      height: Dimension.recomendedfoodheight,
                      width: Dimension.recomendedfoodwidth,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/image/food0.jpg")),
                          color: Colors.purple,
                          borderRadius:
                              BorderRadius.circular(Dimension.height18)),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(
                                  Dimension.height14,
                                ),
                                bottomRight:
                                    Radius.circular(Dimension.height14))),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimension.height10, top: Dimension.height8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              BigTexts(text: "Nutricious half roasted chicken"),
                              SizedBox(
                                height: Dimension.height8,
                              ),
                              SmallTexts(
                                text: "With spainese characteristics",
                                size: 14,
                              ),
                              SizedBox(
                                height: Dimension.height14,
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 4),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconandText(
                                          text: "Normal",
                                          icon: Icons.circle_sharp,
                                          iconcolor: AppColors.icon1color),
                                      IconandText(
                                          text: "Location",
                                          icon: Icons.location_on,
                                          iconcolor: AppColors.mainColor),
                                      IconandText(
                                          text: "time",
                                          icon: Icons.access_time,
                                          iconcolor: AppColors.icon3color)
                                    ]),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }

  Widget buildPageitem(int index) {
    
    var screenwidth = MediaQuery.of(context).size.width;
    print("screenwight: $screenwidth");
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageTransition(
            child: RecomendedFood(), type: PageTransitionType.fade));
      },
      child: Stack(
        children: [
          Container(
            height: Dimension.imagecontainer,
            margin: EdgeInsets.only(
                left: Dimension.height10, right: Dimension.height10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimension.height26),
                //color: index.isEven ? Color(0xFF69c5df) : Color(0xFF9294cc),
                image: DecorationImage(
                    image: AssetImage("assets/image/food4.jpg"),
                    fit: BoxFit.cover)),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Dimension.textcontainer,
              margin: EdgeInsets.only(
                  left: Dimension.height28,
                  right: Dimension.height28,
                  bottom: Dimension.height20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 192, 190, 190),
                        blurRadius: 5,
                        offset: Offset(0, 5)),
                    BoxShadow(color: Colors.white, offset: Offset(-5, 0)),
                    BoxShadow(color: Colors.white, offset: Offset(5, 0))
                  ]),
              child: Container(
                padding: EdgeInsets.only(
                    top: Dimension.height14,
                    left: Dimension.height14,
                    right: Dimension.height14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigTexts(text: "kefbwjf ibsub ijfjs "),
                    SizedBox(
                      height: Dimension.height10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: AppColors.mainColor,
                                    size: 16,
                                  )),
                        ),
                        SizedBox(
                          width: Dimension.height10,
                        ),
                        SmallTexts(text: '4.5'),
                        SizedBox(width: Dimension.height10),
                        SmallTexts(text: "1073"),
                        SizedBox(width: Dimension.height10),
                        SmallTexts(text: "Comments"),
                      ],
                    ),
                    SizedBox(height: Dimension.height10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconandText(
                            text: "Normal",
                            icon: Icons.circle_sharp,
                            iconcolor: AppColors.icon1color),
                        SizedBox(width: Dimension.height8),
                        IconandText(
                            text: "Location",
                            icon: Icons.location_on,
                            iconcolor: AppColors.mainColor),
                        SizedBox(width: Dimension.height8),
                        IconandText(
                            text: "time",
                            icon: Icons.access_time,
                            iconcolor: AppColors.icon3color)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
