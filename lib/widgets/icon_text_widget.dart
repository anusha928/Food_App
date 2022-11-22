import 'package:flutter/cupertino.dart';
import 'package:food_app/widgets/smalltexts.dart';

class IconandText extends StatelessWidget {
  final String text;
  final IconData icon;

  final Color iconcolor;

  const IconandText(
      {super.key,
      required this.text,
      required this.icon,
      required this.iconcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 10),
      child: Row(
        children: [
          Icon(
            icon,
            size: 18,
            color: iconcolor,
          ),
          SmallTexts(
            text: text,
            size: 14,
          ),
        ],
      ),
    );
  }
}
