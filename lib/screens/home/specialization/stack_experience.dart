import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/platform.dart';

class StackExperience extends StatelessWidget {
  const StackExperience({
    Key key,
    @required this.platform,
  }) : super(key: key);

  final PlatFormCheck platform;

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      bottom: 0,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.elliptical(
                  platform.dimension.size.width * 0.5,
                  platform.dimension.size.width * 0.5)),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset(0, 3))
              ]),
          width: platform.type == PlatformType.MOBILE
              ? double.infinity
              : platform.dimension.size.width * 0.5,
          height: platform.type == PlatformType.MOBILE
              ? platform.dimension.size.height * 0.08
              : platform.dimension.size.height * 0.15,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
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
              platform.type != PlatformType.MOBILE
                  ? ItemView(
                      title: "Support",
                      description: "Clients",
                      icon: Icons.support_agent,
                      initColor: 0xffFCCF31,
                      endColor: 0xffF55555)
                  : Container(),
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
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(initColor), Color(endColor)]),
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            constraints: BoxConstraints(maxHeight: 25, maxWidth: 25),
            child: Icon(
              icon,
              size: 15,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff394562),
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 10,
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
