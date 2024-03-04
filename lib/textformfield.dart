import 'package:flutter/material.dart';

class Coustomtextform extends StatelessWidget {
   Coustomtextform({super.key,required this.conTroller,required this.hinttext});
TextEditingController conTroller;
final String hinttext;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30,right: 30),
      child: TextFormField(
        controller: conTroller,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            hintText:hinttext,
            border: OutlineInputBorder(borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            )),
      ),
    );
  }
}
