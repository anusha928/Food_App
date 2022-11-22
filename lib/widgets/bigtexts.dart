import 'package:flutter/cupertino.dart';
import 'package:food_app/utils/dimension.dart';

class BigTexts extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;

  BigTexts({
    super.key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 0,
    this.overFlow = TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overFlow,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size == 0 ? Dimension.height18 : size,
          fontWeight: FontWeight.w400),
    );
  }
}
