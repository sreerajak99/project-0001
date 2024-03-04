import 'package:codemesign/constatants.dart';
import 'package:codemesign/postcontainer.dart';
import 'package:codemesign/sizdebox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Feedpage extends StatefulWidget {
  const Feedpage({super.key});

  @override
  State<Feedpage> createState() => _FeedpageState();
}

class _FeedpageState extends State<Feedpage> {
  AppData data = AppData();

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
      body: ListView.builder(
        itemCount: data.data.length,
        itemBuilder: (context, index) {
          return Postsection(
              profilePicture: data.data[index]["profileimage"],
              postPicture: data.data[index]["postimage"],
              profileName: data.data[index]["profilename"],
              Like: data.data[index]["like"],
              comment: data.data[index]["comment"]);
        },
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
            color: Color(0xFF2B2B2B),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Row(
          children: [
            Coustomsizedbox(height:0 , width: 35),
            Icon(Icons.home_filled, color: Colors.white, size: 40),
            Coustomsizedbox(height:0 , width: 35),
            Icon(Icons.search_outlined, color: Colors.white, size: 40),
            Coustomsizedbox(height:0 , width: 35),
            Icon(Icons.messenger_outline, color: Colors.white, size: 40),
            Coustomsizedbox(height:0 , width: 35),
            Icon(Icons.card_travel_outlined, color: Colors.white, size: 40),
            Coustomsizedbox(height:0 , width: 35),
            Icon(Icons.perm_identity, color: Colors.white, size: 40),

          ],
        ),
      ),
    );
  }
}
