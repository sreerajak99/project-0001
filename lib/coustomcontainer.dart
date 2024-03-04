import 'package:flutter/material.dart';

class Coustcontainer extends StatelessWidget {
   Coustcontainer({super.key,required this.name,required this.Ontap});
final String name;
 final VoidCallback Ontap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, top: 30),
          child: InkWell(onTap:Ontap,
            child: Container(
            child: Center(child: Text(name, style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",fontSize: 13
            ),)),
            width
            :
            333,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(15)),
                    ),
          ),
        )
      ],
    );
  }
}
