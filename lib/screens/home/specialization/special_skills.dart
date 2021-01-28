import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/palette.dart';
import 'package:flutter_app_resume/model/specialization.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SpecialSkills extends StatefulWidget {
  @override
  _SpecialSkillsState createState() => _SpecialSkillsState();
}

class _SpecialSkillsState extends State<SpecialSkills> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      child: Wrap(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "EXPERTISE",
                style: TextStyle(
                    color: Color(0xffFAF9FB).withAlpha(200),
                    letterSpacing: Palette.SecondaryTitleSpacing,
                    fontWeight: FontWeight.normal,
                    fontSize: Palette.SecondaryTitleSize),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "SPECIAL SKILLS",
                style: TextStyle(
                    color: Color(0xffFAF9FB),
                    fontSize: Palette.PrimaryTitleSize,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: screenSize.height * 0.01,
              ),
              Container(
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.17,
                child: Card(
                  color: Color(0xffFAF9FB),
                  child: Container(
                    margin: EdgeInsets.all(screenSize.height * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircularPercentIndicator(
                              radius: 50.0,
                              lineWidth: 4.0,
                              percent: 0.8,
                              center: new Text(
                                "80%",
                                style: TextStyle(
                                    color: Color(0xff498CF4), fontSize: 12),
                              ),
                              progressColor:Color(0xff498CF4),
                            ),
                            SizedBox(
                              width: screenSize.width * 0.01,
                            ),
                            Text(
                              specializations[0].title,
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                color: Palette.specialTitleColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: screenSize.height * 0.01,
                        ),
                        Text(
                           specializations[0].detail1,
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.normal,
                            color: Palette.specialdColor,
                          ),
                        ),
                        Text(
                          specializations[0].dtail2,
                          style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.normal,
                            color: Palette.specialdColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
