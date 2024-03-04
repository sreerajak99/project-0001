import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Postpage extends StatelessWidget {
  const Postpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFDEEAFA),
      appBar: AppBar(
          backgroundColor: Color(0xFFDEEAFA),
          toolbarHeight: 95,
          leadingWidth: 390,
          leading: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 15),
                child: SvgPicture.asset("asset/Public sense.svg"),
              ),
            ],
          )),
      body: Column(children: [

      ]),
    );
  }
}
