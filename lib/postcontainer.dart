import 'package:codemesign/sizdebox.dart';
import 'package:codemesign/text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Postsection extends StatelessWidget {
  const Postsection(
      {super.key,
      required this.profilePicture,
      required this.postPicture,
      required this.profileName,
      required this.Like,
      required this.comment});

  final String profilePicture;
  final String postPicture;
  final String profileName;
  final String Like;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 22,
                backgroundColor: Colors.red,
                foregroundImage: AssetImage(profilePicture),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Designtext(
                    text:profileName ,
                    font: "Tauri",
                    fonts: GoogleFonts.tauri(),
                    color: Color(0xFF0F0C0C),
                    size: 13,
                    fontWeight: FontWeight.w400),
              ),
              Spacer(),
              Icon(Icons.more_vert_rounded),
            ],
          ),
        ),
        Coustomsizedbox(height: 4, width: 0),
        Container(
            width: double.infinity,
            height: 215,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(postPicture)))),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Icon(
                Icons.favorite_border_outlined,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Image(
                image: AssetImage("asset/Speech bubble.png"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Image(image: AssetImage("asset/Direct instagram.png")),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 250),
              child: Image(image: AssetImage("asset/uil_tag.png")),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Designtext(
                  text: Like,
                  font: "Tauri",
                  color: Colors.black,
                  size: 15,
                  fontWeight: FontWeight.w600),
              Designtext(
                  text: comment ,
                  font: "Martel",
                  color: Color(0xFF707070),
                  size: 13,
                  fontWeight: FontWeight.w400)
            ],
          ),
        ),
      ],
    );
  }
}
