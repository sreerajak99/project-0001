import 'package:codemesign/loginpage.dart';
import 'package:codemesign/registerpage.dart';
import 'package:codemesign/text.dart';
import 'package:flutter/material.dart';

class Coustomcontainer extends StatefulWidget {
  Coustomcontainer({super.key});

  @override
  State<Coustomcontainer> createState() => _CoustomcontainerState();
}

class _CoustomcontainerState extends State<Coustomcontainer> {
  bool flag = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 304,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(17),
          border: Border.all(width: 2, color: Colors.white)),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              flag = true;
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Registerpage(),));
              setState(() {});
            },
            child: Container(
                width: 150,
                height: 45,
                decoration: BoxDecoration(
                  color: flag == true ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Designtext(
                      text: "Register",
                      font: "Poppins",
                      color: flag == true ? Colors.black : Colors.white,
                      size: 13,
                      fontWeight: FontWeight.w400),
                )),
          ),
          InkWell(
            onTap: () {
              flag = false;
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Login(),
              ));
              setState(() {});
            },
            child: Container(
              width: 150,
              height: 45,
              decoration: BoxDecoration(
                  color: flag == false ? Colors.white : Colors.transparent,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Designtext(
                    text: "LogIn",
                    font: "Poppins",
                    color: flag == false ? Colors.black : Colors.white,
                    size: 13,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
