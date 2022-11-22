import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  
  final Image image;
   void Function()? onpressed;
   SocialIcon({super.key, required this.image, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: image
      ),
    );
  }
}
