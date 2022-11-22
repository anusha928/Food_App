import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/utils/dimension.dart';

import 'package:food_app/widgets/smalltexts.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  const ExpandableText({super.key, required this.text});

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  late String firsthalf;
  late String secondhalf;
  bool hiddenText = true;

  double textheight = Dimension.screenheight / 3;

  @override
  void initState() {
    super.initState();
    if (widget.text.length > textheight) {
      firsthalf = widget.text.substring(0, textheight.toInt());
      secondhalf =
          widget.text.substring(textheight.toInt() + 1, widget.text.length);
    } else {
      firsthalf = widget.text;
      secondhalf = "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondhalf.isEmpty
          ? SmallTexts(text: firsthalf)
          : Column(
              children: [
                SmallTexts(
                    text: hiddenText ? (firsthalf + "...")
                       
                        : (firsthalf + secondhalf)),
                SizedBox(
                  height: Dimension.height14,
                ),
                InkWell(
                  onTap: () {
                    print("jbrefbiv");
                    setState(() {
                      hiddenText = !hiddenText;
                    });
                  },
                  child: Row(
                    children: [
                      SmallTexts(
                        text: "Show more",
                        color: AppColors.mainColor,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
