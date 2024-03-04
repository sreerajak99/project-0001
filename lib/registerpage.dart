import 'package:codemesign/containercodeme.dart';
import 'package:codemesign/coustomcontainer.dart';
import 'package:codemesign/feedpage.dart';
import 'package:codemesign/loginpage.dart';
import 'package:codemesign/sizdebox.dart';
import 'package:codemesign/text.dart';
import 'package:codemesign/textformfield.dart';
import 'package:flutter/material.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
  var username = TextEditingController();
  var fullname = TextEditingController();
  var emailaddress = TextEditingController();
  var password = TextEditingController();
  var confirmpassword = TextEditingController();

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
              crossAxisAlignment: CrossAxisAlignment.start, children: [
            Codeme(
                text: "", height: 162, sizedboxheight: 78, sizedbox2height: 0),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30),
              child: Designtext(
                  text: "Create Account",
                  font: "Poppins",
                  color: Colors.black,
                  size: 22,
                  fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 30),
              child: Designtext(
                  text: "Please enter the details below.",
                  font: "Poppins",
                  color: Colors.black,
                  size: 15,
                  fontWeight: FontWeight.w400),
            ),
            Coustomsizedbox(height: 10, width: 0),
            Coustomtextform(conTroller: username, hinttext: "user name"),
            Coustomsizedbox(
              height: 20,
              width: 0,
            ),
            Coustomtextform(conTroller: fullname, hinttext: "Full Name"),
            Coustomsizedbox(height: 20, width: 0),
            Coustomtextform(
              conTroller: emailaddress,
              hinttext: "Email Address",
            ),
            Coustomsizedbox(height: 20, width: 0),
            Coustomtextform(conTroller: password, hinttext: "Password"),
            Coustomsizedbox(height: 20, width: 0),
            Coustomtextform(
                conTroller: confirmpassword, hinttext: "Confirm Password"),
            Coustomsizedbox(height: 10, width: 0),
            Coustcontainer(
              name: "Register",
              Ontap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>Login()));
              },
            ),
            Coustomsizedbox(height: 10, width: 0),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Designtext(
                      text: "I have already an account?",
                      font: "Poppins",
                      color: Colors.black,
                      size: 13,
                      fontWeight: FontWeight.w400),
                ),
                InkWell(onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Login(),));
                },
                  child: Designtext(
                      text: "Login",
                      font: "Poppins",
                      color: Color(0xFF0099EF),
                      size: 13,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ]),
        ),
      ),
    );
  }
}
