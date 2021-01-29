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
    PlatFormCheck dimension = PlatFormCheck.of(context);

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
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                      color: Color(0xffFAF9FB).withAlpha(200),
                      letterSpacing: Palette.SecondaryTitleSpacing,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "SPECIAL SKILLS",
                style:  Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: dimension.space1,
              ),
              Container(
                constraints: BoxConstraints(
                  maxWidth: dimension.type == PlatformType.MOBILE
                      ? dimension.screenSize.width * 0.8
                      : dimension.screenSize.width * 0.4,
                ),
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
                              width: dimension.screenSize.width * 0.01,
                            ),
                            Text(
                              specializations[0].title,
                              style:Theme.of(context).textTheme.subtitle1.copyWith(
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.5,
                                color: Palette.specialTitleColor,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: dimension.screenSize.height * 0.01,
                        ),
                        Text(
                          specializations[0].detail1,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
                            fontWeight: FontWeight.normal,
                            color: Palette.specialdColor,
                          ),
                        ),
                        Text(
                          specializations[0].dtail2,
                          style: Theme.of(context).textTheme.bodyText2.copyWith(
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
