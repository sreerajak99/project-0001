import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Designtext extends StatelessWidget {
  Designtext({
    super.key,
    required this.text,
    required this.font,
    required this.color,
    required this.size,
    required this.fontWeight,
     this.fonts
  });

  String text;
  String font;
  Color color;
  double size;
  FontWeight fontWeight;
  final TextStyle? fonts;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: fonts??TextStyle(
        color: color,
        fontSize: size
      )
    );
  }
}
