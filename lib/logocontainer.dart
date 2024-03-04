import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Logocontainer extends StatelessWidget {
   Logocontainer({super.key,required this.image});
String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15,right: 8),
      child: Container(
        height: 50,
        width: 74,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(width: 0, color: Colors.transparent),
        ),
        child: Center(child: Image.asset(image)), // Make sure the asset path is correct
      ),
    );

  }
}
