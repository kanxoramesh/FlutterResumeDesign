import 'dart:ui';

import 'package:flutter/material.dart';

class ProjectMind extends StatelessWidget {
  final Function() scrollToBottom;

  ProjectMind({
    this.scrollToBottom,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4,
      width: double.infinity,
      child: Container(
        padding: EdgeInsets.all(screenSize.height * 0.05),
        color: Color(0xffFAF9FB),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContactMeView(scrollToBottom: scrollToBottom),
          ],
        ),
      ),
    );
  }
}

class ContactMeView extends StatelessWidget {
  final Function() scrollToBottom;

  ContactMeView({this.scrollToBottom});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Have a Project On Your Mind",
            style: TextStyle(
                color: Color(0xff394562),
                letterSpacing: 0.5,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: screenSize.height * 0.01,
          ),
          Text(
            "Tell me about it, submit an RFP, or just send some quick notes.\nYou have come to the right place. Please contact me",
            style: TextStyle(
                color: Color(0xff394562).withOpacity(0.7), fontSize: 8),
          ),

          SizedBox(
            height: screenSize.height * 0.02,
          ),
          InkWell(
            onTap: () {
              scrollToBottom.call();
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xff437DF7),
                  borderRadius: BorderRadius.all(Radius.elliptical(40, 40))),
              width: 100,
              height: 30,
              child: Center(
                child: Text(
                  "Connect Me",
                  style: TextStyle(color: Colors.white,fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.02,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage("images/help.jpg"),
                    fit: BoxFit.cover)),
            height: screenSize.height * 0.15,
            width: screenSize.width * 0.6,
          ),
        ],
      ),
    );
  }
}
