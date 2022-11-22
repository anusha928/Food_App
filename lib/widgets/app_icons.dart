

import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final Color iconcolor;
  final Color backgroundcolor;
  final double size;
   final double iconsize;
  final IconData icon;
  const AppIcon({super.key,
   this.backgroundcolor= const Color(0xFFfcf4e4),
  required this.icon,
   this.iconcolor= const Color(0xFF756d54),
   this.size = 40,
   this.iconsize =14
   });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size/2),
        color: backgroundcolor
      ),
      child: Icon(icon,
      color: iconcolor,
      size: iconsize,
      )

    );
  }
}
