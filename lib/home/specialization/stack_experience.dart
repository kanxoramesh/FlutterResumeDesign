import 'package:flutter/material.dart';

class StackExperience extends StatelessWidget {
  const StackExperience({
    Key key,
    @required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.elliptical(
                  screenSize.width * 0.5, screenSize.width * 0.5)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          width: screenSize.width * 0.5,
          height: screenSize.height * 0.15,
          child: Row(
            children: [
              ItemView(
                  title: "3 Years Job",
                  description: "Experience",
                  icon: Icons.auto_awesome,
                  initColor: 0xffFCCF31,
                  endColor: 0xffF55555),
              ItemView(
                  title: "10+ Projects",
                  description: "Completed",
                  icon: Icons.file_copy,
                  initColor: 0xffFCCF31,
                  endColor: 0xffF55555),
              ItemView(
                  title: "Support",
                  description: "Clients",
                  icon: Icons.support_agent,
                  initColor: 0xffFCCF31,
                  endColor: 0xffF55555),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemView extends StatelessWidget {
  final initColor, endColor;

  final icon;

  final description;

  final title;

  const ItemView({
    Key key,
    this.initColor,
    this.endColor,
    this.icon,
    this.description,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 46, vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [Color(initColor), Color(endColor)]),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
              child: Icon(icon,size: 20,color: Colors.white,),),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff394562),
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Color(0xff0D0B4D),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
