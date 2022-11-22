import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/widgets/bigtexts.dart';
import 'package:food_app/widgets/smalltexts.dart';

import '../../../widgets/inputfield.dart';
import 'food_page_body.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          //head of mainpage
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigTexts(
                          text: "Nepal",
                          color: AppColors.mainColor,
                          size: 24,
                        ),
                        Row(
                          children: [
                            SmallTexts(
                              text: "Kathmandu",
                              color: Colors.black54,
                              size: 14,
                            ),
                            Icon(Icons.arrow_drop_down_rounded)
                          ],
                        )
                      ],
                    ),
                    // Container(
                    //   width: 100,
                    //   child: TextFormField(
                    //     decoration: InputDecoration(
                    //         contentPadding: EdgeInsets.symmetric(
                    //             vertical: 10, horizontal: 24),
                    //         hintText: "Search",
                    //         hintStyle: TextStyle(color: AppColors.mainColor)),
                    //   ),
                    // ),
                    Container(
                      height: 44,
                      width: 44,
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                    )
                  ],
                ),
              ),
              //body of mainpage
              Expanded(child: SingleChildScrollView(child: FoodPageBody()))
            ],
          ),
        ),
      ),
    );
  }
}
