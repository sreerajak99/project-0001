import 'package:codemesign/containercodeme.dart';
import 'package:codemesign/coustomcontainer.dart';
import 'package:codemesign/feedpage.dart';
import 'package:codemesign/logocontainer.dart';
import 'package:codemesign/postpage.dart';
import 'package:codemesign/registerpage.dart';
import 'package:codemesign/sizdebox.dart';
import 'package:codemesign/text.dart';
import 'package:codemesign/textformfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var password = TextEditingController();
  var usernmae = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF2F2F2),
                Color(0xFFE8E8E8),
                Color(0xFF55C2FF)
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Codeme(
                  text: "",
                  height: 198,
                  sizedboxheight: 99,
                  sizedbox2height: 0),
              Coustomsizedbox(height: 39, width: 0),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Designtext(
                    text: "Welcome Back",
                    font: "Poppins",
                    color: Color(0xFF2F2F2F),
                    size: 30,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 33),
                child: Designtext(
                    text: "Please enter the detail below to continue",
                    font: "Poppins",
                    color: Colors.black,
                    size: 13,
                    fontWeight: FontWeight.w400),
              ),
              Coustomsizedbox(height: 75, width: 0),
              Coustomtextform(conTroller: usernmae, hinttext: "User Name"),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      suffixIcon: Icon(CupertinoIcons.eye_slash_fill),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 217),
                child: Designtext(
                    text: "Recovery Password ?",
                    font: "Poppins",
                    color: Color(0xFF000000),
                    size: 15,
                    fontWeight: FontWeight.w400),
              ),
              Coustcontainer(
                name: "Login",
                Ontap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Feedpage(),));
                },
              ),
              Coustomsizedbox(height: 29, width: 0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: SvgPicture.asset("asset/Line 2.svg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Designtext(
                        text: "Or Continue With",
                        font: "Poppins",
                        color: Color(0xFF000000),
                        size: 11,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: SvgPicture.asset("asset/Line 3.svg"),
                  ),
                ],
              ),
              Coustomsizedbox(height: 30, width: 0),
              Row(
                children: [
                  Coustomsizedbox(height: 0, width: 46),
                  Logocontainer(
                    image: "asset/Group 2.png",
                  ),
                  Logocontainer(image: "asset/Group 3.png"),
                  Logocontainer(image: "asset/Group 4.png")
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 125, top: 20),
                child: Row(
                  children: [
                    Designtext(
                        text: "Not a member?",
                        font: "Poppins",
                        color: Color(0xFF000000),
                        size: 11,
                        fontWeight: FontWeight.w400),
                    InkWell(onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (
                          context) =>Registerpage(),));
                    },
                      child: Designtext(
                          text: "Register Now",
                          font: "Poppins",
                          color: Color(0xFF0099EF),
                          size: 11,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
