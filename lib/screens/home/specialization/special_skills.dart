import 'package:flutter/material.dart';
import 'package:flutter_app_resume/config/palette.dart';
import 'package:flutter_app_resume/config/platform.dart';
import 'package:flutter_app_resume/model/specialization.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SpecialSkills extends StatefulWidget {
  @override
  _SpecialSkillsState createState() => _SpecialSkillsState();
}

class _SpecialSkillsState extends State<SpecialSkills> {
  @override
  Widget build(BuildContext context) {
    PlatFormCheck platFormCheck = PlatFormCheck.of(context);
    Dimension dimension = platFormCheck.dimension;

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
                    fontSize: dimension.Title8),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "SPECIAL SKILLS",
                style: TextStyle(
                    color: Color(0xffFAF9FB),
                    fontSize: dimension.Title5,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: dimension.space1,
              ),
              Container(
                width: platFormCheck.type == PlatformType.MOBILE
                    ? dimension.size.width * 0.7
                    : dimension.size.width * 0.4,
                height: platFormCheck.type == PlatformType.MOBILE
                    ? dimension.size.width * 0.3
                    : dimension.size.height * 0.25,
                child: Card(
                  color: Color(0xffFAF9FB),
                  child: Container(
                    margin: EdgeInsets.all(dimension.space1),
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
                              progressColor: Color(0xff498CF4),
                            ),
                            SizedBox(
                              width: dimension.size.width * 0.01,
                            ),
                            Text(
                              specializations[0].title,
                              style: TextStyle(
                                fontSize: dimension.Title7,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                color: Palette.specialTitleColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: dimension.size.height * 0.01,
                        ),
                        Text(
                          specializations[0].detail1,
                          style: TextStyle(
                            fontSize: dimension.Title9,
                            fontWeight: FontWeight.normal,
                            color: Palette.specialdColor,
                          ),
                        ),
                        Text(
                          specializations[0].dtail2,
                          style: TextStyle(
                            fontSize: dimension.Title9,
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
