

import 'package:codemesign/container.dart';
import 'package:codemesign/containercodeme.dart';
import 'package:codemesign/text.dart';
import 'package:flutter/material.dart';

class Data extends StatefulWidget {
  const Data({super.key});

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,
            Colors.white,Colors.white,
            Colors.white70,
            Colors.white60
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Codeme(text: "Explore Syllabus >>", height: 408,sizedboxheight: 194,sizedbox2height: 100),
              Padding(
                padding: const EdgeInsets.only(top: 171),
                child: Designtext(
                    text: "Discover Your",
                    font: "Poppins",
                    color: Color(0xFF2F2F2F),
                    size:24 ,
                    fontWeight:FontWeight.w600),
              ),
              Designtext(
                  text: "Learning Here",
                  font: "Poppins",
                  color: Color(0xFF2F2F2F),
                  size:24 ,
                  fontWeight:FontWeight.w600),
              SizedBox(height: 100),
              Coustomcontainer()
            ],
          )),
    );
  }
}
