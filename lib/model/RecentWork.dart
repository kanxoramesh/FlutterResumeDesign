import 'package:flutter/material.dart';

class RecentWork {
  final Color backColor, titleColor, desColor;
  final String companyIcon,
      companyName,
      projTitle,
      projDesc,
      projectImage,
      projectLink;

  RecentWork(
      {this.backColor,
      this.titleColor,
      this.desColor,
      this.companyIcon,
      this.companyName,
      this.projTitle,
      this.projDesc,
      this.projectImage,
      this.projectLink});
}

List<RecentWork> recentWorks = [
  RecentWork(
    backColor: Color(0xff00317A),
    titleColor: Colors.white,
    desColor: Color(0xff607EAC),
    companyIcon: "images/3c.png",
    companyName: " 3C",
    projTitle: "Dr. Ved: My Personal Astrologer Vedic Astrology",
    projDesc:
        "Dr Ved astrology app is a solution for anyone who is seeking accurate personalized astrological reading.",
    projectImage: "images/drved.png",
    projectLink:
        "https://play.google.com/store/apps/details?id=com.drved.astrology",
  ),
  RecentWork(
    backColor: Color(0xff1272F1),
    titleColor: Colors.white,
    desColor: Colors.white.withOpacity(0.7),
    companyIcon: "images/webo.png",
    companyName: "WEBO",
    projTitle: "Trackify Device Management",
    projDesc:
        "To remotely control android devices. It uses WEBRTC to project screen and alllow remote user to control device",
    projectImage: "images/trackifym.png",
    projectLink:
        "https://play.google.com/store/apps/details?id=com.trackify.management",
  ),
  RecentWork(
    backColor: Color(0xffEAEEF5),
    titleColor: Color(0xff121212),
    desColor: Color(0xff121212).withOpacity(0.7),
    companyIcon: "images/webo.png",
    companyName: "WEBO",
    projTitle: "Trackify",
    projDesc:
        "No matter whether you are a driver, scheduler, maintenance planner or in the administrative office, the benefits go above and beyond to improve fleet-wide operations and make life easier for you",
    projectImage: "images/trackify.png",
    projectLink:
        "https://play.google.com/store/apps/details?id=com.trackify.app",
  ),
  RecentWork(
    backColor: Colors.black,
    titleColor: Colors.white,
    desColor: Colors.white.withOpacity(0.7),
    companyIcon: "images/3c.png",
    companyName: " 3C",
    projTitle: "MeroJob",
    projDesc: "Leading Job provider application in nepal .",
    projectImage: "images/merojob.png",
    projectLink:
        "https://play.google.com/store/apps/details?id=com.merojob.merojobapp",
  ),
  RecentWork(
    backColor: Color(0xffEAEEF5),
    titleColor: Color(0xff121212),
    desColor: Color(0xff121212).withOpacity(0.7),
    companyIcon: "images/3c.png",
    companyName: " 3C",
    projTitle: "Cosys Air Mobile Banking",
    projDesc:
        "CoSys Air Mobile Banking is designed to help our customers in their day to day financial transactions. Users can check balance for their accounts and get account statements on the go. The app has internet as well as SMS mode to get account information.",
    projectImage: "images/cosys.png",
    projectLink:
        "https://play.google.com/store/apps/details?id=com.cosys.cosysmobilebanking",
  ),
  RecentWork(
    backColor: Color(0xffFAF0F2),
    titleColor: Colors.black,
    desColor: Colors.black26,
    companyIcon: "images/3c.png",
    companyName: " 3C",
    projTitle: "Singular Key Passwordless Authentication",
    projDesc:
        "Deliver modern authentication experience to your customers, partners, and employees on Android application",
    projectImage: "images/singular.png",
    projectLink:
        "https://play.google.com/store/apps/details?id=com.singular.singularkey",
  ),
];
