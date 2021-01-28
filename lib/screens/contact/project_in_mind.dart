import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/platform.dart';

class ProjectMind extends StatelessWidget {
  final Function() scrollToBottom;

  ProjectMind({
    this.scrollToBottom,
  });

  @override
  Widget build(BuildContext context) {
    PlatFormCheck platFormCheck = PlatFormCheck.of(context);
    Dimension dimension = platFormCheck.dimension;

    return Container(
      constraints: BoxConstraints(
        maxHeight: dimension.size.height * 0.5,
        maxWidth: double.infinity,
      ),
      child: Container(
        padding: EdgeInsets.all(dimension.verticalMargin),
        color: Color(0xffFAF9FB),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ContactMeView(
                scrollToBottom: scrollToBottom, platFormCheck: platFormCheck),
            platFormCheck.type != PlatformType.MOBILE
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            image: DecorationImage(
                                image: AssetImage("images/help.jpg"),
                                fit: BoxFit.cover)),
                        height: dimension.size.height * 0.2,
                        width: dimension.size.width * 0.4,
                      ),
                    ],
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class ContactMeView extends StatelessWidget {
  final Function() scrollToBottom;
  final PlatFormCheck platFormCheck;

  ContactMeView({this.scrollToBottom, this.platFormCheck});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Have a Project On Your Mind",
                style: TextStyle(
                    color: Color(0xff394562),
                    letterSpacing: 0.5,
                    fontSize: platFormCheck.dimension.Title6,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              Expanded(
                child: Text(
                  "Tell me about it, submit an RFP, or just send some quick notes.You have come to the right place. Please contact me", style: TextStyle(
                    color: Color(0xff394562).withOpacity(0.7),
                    fontSize: platFormCheck.dimension.Title8,
                  ),
                ),
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
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: platFormCheck.dimension.Title9),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              platFormCheck.type == PlatformType.MOBILE
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                              image: AssetImage("images/help.jpg"),
                              fit: BoxFit.cover)),
                      height: screenSize.height * 0.15,
                      width: screenSize.width * 0.6,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
