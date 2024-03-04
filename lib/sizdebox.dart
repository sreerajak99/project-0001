import 'package:flutter/material.dart';

class Coustomsizedbox extends StatelessWidget {
   Coustomsizedbox({super.key,required this.height,required this.width});
double height,width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height:height,width: width ,);
  }
}
