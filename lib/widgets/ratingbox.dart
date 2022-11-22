import 'package:flutter/material.dart';
import 'package:food_app/widgets/smalltexts.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';
import 'bigtexts.dart';
import 'icon_text_widget.dart';

class RatingBox extends StatelessWidget {
  final String text;
  const RatingBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigTexts(
          text: text,
          size: Dimension.height22,
        ),
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
        SizedBox(height: Dimension.height18),
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
    );
  }
}
