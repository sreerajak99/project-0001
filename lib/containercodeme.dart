import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Codeme extends StatelessWidget {
  Codeme(
      {super.key, required this.text, required this.height, required this.sizedboxheight, required this.sizedbox2height});

  String text;

  double height, sizedboxheight, sizedbox2height;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: Color(0xFF1B1645),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15)),
        ),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: sizedboxheight,),
                SvgPicture.asset("asset/codeme blu white 1.svg"),
                SizedBox(height:sizedbox2height,),
                Padding(
                  padding: const EdgeInsets.only(left: 211),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                        fontSize: 13),
                  ),
                )
              ],
            )));
  }
}
