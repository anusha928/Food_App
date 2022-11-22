import 'package:flutter/cupertino.dart';

class SmallTexts extends StatelessWidget {
  Color? color;
  double height;
  final String text;
  double size;
  //TextOverflow overflow;

  SmallTexts({
    super.key,
    this.color = const Color(0xFFccc7c5),
    required this.text,
    this.height = 1.2,
    //this.overflow = TextOverflow.ellipsis,
    this.size = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      //overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
      ),
    );
  }
}
